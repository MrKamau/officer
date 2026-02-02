import 'package:freezed_annotation/freezed_annotation.dart';

import 'role.dart';

part 'designation.freezed.dart';
part 'designation.g.dart';

@freezed
class Designation with _$Designation {
  factory Designation({
    int? id,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    int? officerId,
    dynamic countiesId,
    int? roleId,
    Role? role,
  }) = _Designation;

  factory Designation.fromJson(Map<String, dynamic> json) =>
      _$DesignationFromJson(json);
}
