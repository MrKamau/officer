import 'dart:io';
import 'dart:typed_data';
import 'package:esc_pos_utils_plus/esc_pos_utils_plus.dart';
import 'package:flutter_usb_printer/flutter_usb_printer.dart';
import 'package:officer/core/utilities/printer/services/printer_manager.dart';

import '../enums/connection_response.dart';
import '../models/pos_printer.dart';
import '../models/usb_printer.dart';
import '../pos_printer_manager.dart';
import 'extension.dart';
import 'printer_manager.dart';
import 'usb_service.dart';

/// USB Printer
class USBPrinterManager extends PrinterManager {
  @override
  Generator? generator;

  /// usb_serial
  var usbPrinter = FlutterUsbPrinter();

  USBPrinterManager(
    POSPrinter printer,
    PaperSize paperSize,
    CapabilityProfile profile, {
    int spaceBetweenRows = 5,
    int port = 9100,
  }) {
    super.printer = printer;
    super.address = printer.address;
    super.productId = printer.productId;
    super.deviceId = printer.deviceId;
    super.vendorId = printer.vendorId;
    super.paperSize = paperSize;
    super.profile = profile;
    super.spaceBetweenRows = spaceBetweenRows;
    super.port = port;
    generator =
        Generator(paperSize, profile, spaceBetweenRows: spaceBetweenRows);
  }

  @override
  Future<ConnectionResponse> connect(
      {Duration? timeout = const Duration(seconds: 5)}) async {
    if (Platform.isAndroid) {
      try {
        // First get the list of available USB devices
        var devices = await FlutterUsbPrinter.getUSBDeviceList();
        if (devices.isEmpty) {
          print("No USB devices found");
          return ConnectionResponse.timeout;
        }

        // Find our target device
        var targetDevice = devices.firstWhere(
          (device) =>
              device["vendorId"] == vendorId.toString() &&
              device["productId"] == productId.toString(),
          orElse: () => <String, dynamic>{},
        );

        if (targetDevice.isEmpty) {
          print("Target printer not found in USB device list");
          return ConnectionResponse.timeout;
        }

        // Try to connect with retry logic
        int retryCount = 0;
        const maxRetries = 3;

        while (retryCount < maxRetries) {
          try {
            // The connect method will handle permission request internally
            var usbDevice = await usbPrinter.connect(vendorId!, productId!);
            if (usbDevice != null) {
              print(
                  "Successfully connected to printer - vendorId: $vendorId, productId: $productId");
              isConnected = true;
              printer.connected = true;
              return ConnectionResponse.success;
            }
          } catch (e) {
            print("Connection attempt $retryCount failed: $e");
            if (retryCount == maxRetries - 1) {
              rethrow;
            }
          }
          retryCount++;
          await Future.delayed(Duration(seconds: 1)); // Wait before retrying
        }

        print("Failed to connect after $maxRetries attempts");
        isConnected = false;
        printer.connected = false;
        return ConnectionResponse.timeout;
      } catch (e) {
        print("USB Connection Error: $e");
        isConnected = false;
        printer.connected = false;
        return ConnectionResponse.unknown;
      }
    } else {
      return ConnectionResponse.unsupport;
    }
  }

  /// [discover] let you explore all netWork printer in your network
  static Future<List<USBPrinter>> discover() async {
    var results = await USBService.findUSBPrinter();
    return results;
  }

  @override
  Future<ConnectionResponse> disconnect({Duration? timeout}) async {
    if (Platform.isAndroid) {
      try {
        await usbPrinter.close();
        isConnected = false;
        printer.connected = false;
        if (timeout != null) {
          await Future.delayed(timeout, () => null);
        }
        return ConnectionResponse.success;
      } catch (e) {
        print("Error disconnecting: $e");
        return ConnectionResponse.unknown;
      }
    }
    return ConnectionResponse.timeout;
  }

  @override
  Future<ConnectionResponse> writeBytes(List<int> data,
      {bool isDisconnect = true}) async {
    if (Platform.isAndroid) {
      if (!isConnected) {
        var connectResult = await connect();
        if (connectResult != ConnectionResponse.success) {
          return connectResult;
        }
      }

      try {
        PosPrinterManager.logger("start write");
        var bytes = Uint8List.fromList(data);
        int max = 16384;

        /// maxChunk limit on android
        var datas = bytes.chunkBy(max);
        await Future.forEach(
            datas, (dynamic data) async => await usbPrinter.write(data));
        PosPrinterManager.logger("end write bytes.length${bytes.length}");

        if (isDisconnect) {
          await disconnect();
        }
        return ConnectionResponse.success;
      } catch (e) {
        PosPrinterManager.logger.error("Error writing bytes: $e");
        return ConnectionResponse.unknown;
      }
    } else {
      return ConnectionResponse.unsupport;
    }
  }
}
