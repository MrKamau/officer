import 'package:freezed_annotation/freezed_annotation.dart';

import 'gender.dart';
import 'nationality.dart';

part 'iprs_person.freezed.dart';
part 'iprs_person.g.dart';

@freezed
class IprsPerson with _$IprsPerson {
  factory IprsPerson({
    int? id,
    @JsonKey(name: 'id_no') String? idNo,
    @JsonKey(name: 'passport_no') dynamic passportNo,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'middle_name') String? middleName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'county_of_birth') dynamic countyOfBirth,
    @JsonKey(name: 'district_of_birth') String? districtOfBirth,
    @JsonKey(name: 'division_of_birth') dynamic divisionOfBirth,
    @JsonKey(name: 'location_of_birth') dynamic locationOfBirth,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    @JsonKey(name: 'mug_shot') dynamic mugShot,
    Gender? gender,
    Nationality? nationality,
  }) = _IprsPerson;

  factory IprsPerson.fromJson(Map<String, dynamic> json) =>
      _$IprsPersonFromJson(json);
}
