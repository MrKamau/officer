import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';
import 'details.dart';
import 'occurrence.dart';

part 'detail.freezed.dart';
part 'detail.g.dart';

@freezed
class Detail with _$Detail {
  factory Detail({
    int? id,
    Details? details,
    Occurrence? occurrence,
    Category? category,
  }) = _Detail;

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);
}
