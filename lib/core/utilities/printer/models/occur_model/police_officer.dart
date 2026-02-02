import 'package:freezed_annotation/freezed_annotation.dart';

import 'iprs_person.dart';
import 'police_station.dart';
import 'rank.dart';
import 'user.dart';

part 'police_officer.freezed.dart';
part 'police_officer.g.dart';

@freezed
class PoliceOfficer with _$PoliceOfficer {
  factory PoliceOfficer({
    int? id,
    User? user,
    @JsonKey(name: 'iprs_person') IprsPerson? iprsPerson,
    @JsonKey(name: 'service_number') String? serviceNumber,
    @JsonKey(name: 'email_address') String? emailAddress,
    @JsonKey(name: 'mobile_phone') String? mobilePhone,
    Rank? rank,
    @JsonKey(name: 'police_station') PoliceStation? policeStation,
    @JsonKey(name: 'mug_shot') dynamic mugShot,
  }) = _PoliceOfficer;

  factory PoliceOfficer.fromJson(Map<String, dynamic> json) =>
      _$PoliceOfficerFromJson(json);
}
