import 'package:flutter_usb_printer/flutter_usb_printer.dart';

import '../models/usb_printer.dart';

class USBService {
  static Future<List<USBPrinter>> findUSBPrinter() async {
    List<USBPrinter> devices = [];

    var results = await FlutterUsbPrinter.getUSBDeviceList();

    devices = [
      ...results
          .map((e) => USBPrinter(
                name: e["productName"],
                address: e["manufacturer"],
                vendorId: int.tryParse(e["vendorId"]),
                productId: int.tryParse(e["productId"]),
                deviceId: int.tryParse(e["deviceId"]),
              ))
          .toList()
    ];

    return devices;
  }
}
