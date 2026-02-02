import 'package:freezed_annotation/freezed_annotation.dart';

part 'occurrence.freezed.dart';
part 'occurrence.g.dart';

@freezed
class Occurrence with _$Occurrence {
  factory Occurrence({
    int? id,
    @JsonKey(name: 'ob_no') String? obNo,
    String? narrative,
    String? location,
    dynamic lat,
    dynamic long,
    String? module,
    @JsonKey(name: 'is_complete') bool? isComplete,
    @JsonKey(name: 'is_closed') bool? isClosed,
    @JsonKey(name: 'posted_date') DateTime? postedDate,
    @JsonKey(name: 'police_station') int? policeStation,
    @JsonKey(name: 'police_officer') int? policeOfficer,
  }) = _Occurrence;

  factory Occurrence.fromJson(Map<String, dynamic> json) =>
      _$OccurrenceFromJson(json);
}
