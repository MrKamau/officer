import 'package:flutter/material.dart';

import '../platform/color_palette.dart';

extension AppNotifications on BuildContext {
  void showCustomSnackBar(String message, {bool isError = false}) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      duration: const Duration(milliseconds: 5000),
      backgroundColor: isError ? Colors.red : ColorPalette.greenColor,
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
    ));
  }
}

extension ListExtension on List {
  List<List<T>> chunk<T>(int chunkSize) {
    List<List<T>> chunks = [];
    int len = length;
    for (var i = 0; i < len; i += chunkSize) {
      int size = i + chunkSize;
      chunks.add(sublist(i, size > len ? len : size) as List<T>);
    }
    return chunks;
  }

  Map<int, List<T>> groupByPage<T>(int Function(T) key) {
    Map<int, List<T>> groupedByPage = {};
    for (var item in this) {
      int page = key(item);
      groupedByPage[page] ??= [];
      groupedByPage[page]!.add(item);
    }
    return groupedByPage;
  }
}

extension SeparatorExtension on String {
  String get removeHyphen => split("_").map((str) => str).join(" ");
}

extension CapExtension on String {
  String get inCaps => isEmpty ? '' : '${this[0].toUpperCase()}${substring(1)}';
  String get capitalizeFirstofEach =>
      split(" ").map((str) => str.inCaps).join(" ");
}

extension MyIterable<E> on Iterable<E> {
  Iterable<E> sortedBy(Comparable Function(E e) key) =>
      toList()..sort((a, b) => key(a).compareTo(key(b)));
}

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}
