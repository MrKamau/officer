import 'package:freezed_annotation/freezed_annotation.dart';

import 'designation.dart';
import 'iprs.dart';
import 'rank.dart';
import 'role.dart';
import 'station.dart';
import 'today_attendance.dart';

part 'officer.freezed.dart';
part 'officer.g.dart';

@freezed
class Officer with _$Officer {
  factory Officer({
    int? id,
    String? name,
    @JsonKey(name: 'service_number') String? serviceNumber,
    @JsonKey(name: 'is_temporary_password') bool? isTemporaryPassword,
    String? email,
    Rank? rank,
    @JsonKey(name: 'badge_no') String? badgeNo,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    String? gender,
    @JsonKey(name: 'contact_info') String? contactInfo,
    @JsonKey(name: 'emergency_contact_info') String? emergencyContactInfo,
    @JsonKey(name: 'iPRS_PersonId') int? iPrsPersonId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    dynamic wardId,
    int? stationId,
    Iprs? iprs,
    @JsonKey(name: 'Designation') List<Designation>? designation,
    Station? station,
    Role? role,
    TodayAttendance? todayAttendance,
  }) = _Officer;

  factory Officer.fromJson(Map<String, dynamic> json) =>
      _$OfficerFromJson(json);
}
