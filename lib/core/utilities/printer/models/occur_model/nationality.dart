import 'package:freezed_annotation/freezed_annotation.dart';

part 'nationality.freezed.dart';
part 'nationality.g.dart';

@freezed
class Nationality with _$Nationality {
  factory Nationality({
    int? id,
    String? name,
    String? nationality,
    @JsonKey(name: 'iso_code') String? isoCode,
  }) = _Nationality;

  factory Nationality.fromJson(Map<String, dynamic> json) =>
      _$NationalityFromJson(json);
}
