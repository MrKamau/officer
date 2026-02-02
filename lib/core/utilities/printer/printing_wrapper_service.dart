import 'dart:developer';

import 'package:esc_pos_utils_plus/esc_pos_utils_plus.dart';
import 'package:webcontent_converter/webcontent_converter.dart';

import 'demo.dart';
import 'models/occur_model/occur_model.dart';
import 'models/usb_printer.dart';
import 'services/service.dart';
import 'services/usb_printer_manager.dart';

class PrintingWrapperService {
  USBPrinterManager? _manager;
  scan(OccurModel event, String file) async {
    final profile = await CapabilityProfile.load();

    var printers = await USBPrinterManager.discover();
    log("$printers");
    for (var element in printers) {
      log("${element.address}");
    }
    final target = printers.firstWhere(
      (p) => p.address!.contains('Gprinter') || p.address!.contains('GD32'),
      // orElse: () => throw Exception('No compatible printer found'),
    );
    log("target: $target");

    // final manager = USBPrinterManager(target, PaperSize.mm58, profile);
    // final generator = Generator(PaperSize.mm58, profile);

    // await manager.connect();

    // final bytes = <int>[];

    // // 🖨️ Title
    // bytes.addAll(generator.text(
    //   'test',
    //   styles: PosStyles(
    //     bold: true,
    //     align: PosAlign.center,
    //     height: PosTextSize.size2,
    //     width: PosTextSize.size2,
    //   ),
    // ));

    // bytes.addAll(generator.feed(2));
    // bytes.addAll(generator.cut());

    // var data = await manager.writeBytes(bytes);
    // log("data: $data");
    _connect(target, event, file);

    //     final content = Demo.getShortReceiptContent(event, file);

    // var bytes = await WebcontentConverter.contentToImage(
    //   content: content,
    //   executablePath: WebViewHelper.executablePath(),
    // );
    // printDoc(bytes: bytes);
  }

  _connect(USBPrinter printer, OccurModel event, String file) async {
    var paperSize = PaperSize.mm80;
    var profile = await CapabilityProfile.load();
    var manager = USBPrinterManager(printer, paperSize, profile);
    await manager.connect();
    _manager = manager;
    _startPrinter(event, file);
  }

  _startPrinter(OccurModel event, String file) async {
    final content = Demo.getShortReceiptContent(event, file);
    var bytes = await WebcontentConverter.contentToImage(
      content: content,
      executablePath: WebViewHelper.executablePath(),
    );
    var service = ESCPrinterService(bytes);
    var data = await service.getBytes();

    if (_manager != null) {
      print("isConnected ${_manager!}");
      _manager!.writeBytes(data, isDisconnect: false);
    }
  }
}
