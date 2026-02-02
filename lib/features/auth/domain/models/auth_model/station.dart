import 'package:freezed_annotation/freezed_annotation.dart';

part 'station.freezed.dart';
part 'station.g.dart';

@freezed
class Station with _$Station {
  factory Station({
    int? id,
    String? name,
    dynamic description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    dynamic locationId,
  }) = _Station;

  factory Station.fromJson(Map<String, dynamic> json) =>
      _$StationFromJson(json);
}
