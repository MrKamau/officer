import 'package:freezed_annotation/freezed_annotation.dart';

part 'police_station.freezed.dart';
part 'police_station.g.dart';

@freezed
class PoliceStation with _$PoliceStation {
  factory PoliceStation({
    int? id,
    String? name,
    String? country,
    String? county,
    String? subcounty,
    String? ward,
    String? location,
  }) = _PoliceStation;

  factory PoliceStation.fromJson(Map<String, dynamic> json) =>
      _$PoliceStationFromJson(json);
}
