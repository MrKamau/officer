import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future<void> printDoc({required Uint8List bytes}) async {
  print("INSIDE FUNCTION");
  final customPageSize = PdfPageFormat(75, 100, marginAll: 0);
  final doc = pw.Document();
  doc.addPage(pw.Page(
      pageFormat: PdfPageFormat.roll57,
      build: (pw.Context context) {
        return pw.Image(pw.MemoryImage(bytes));
      }));
  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => doc.save());
  print("DONE");
}
