import 'package:freezed_annotation/freezed_annotation.dart';

import 'detail.dart';
import 'police_officer.dart';
import 'police_station.dart';
import 'reporter.dart';

part 'occur_model.freezed.dart';
part 'occur_model.g.dart';

@freezed
class OccurModel with _$OccurModel {
  factory OccurModel({
    String? date,
    String? time,
    String? location,
    String? obNo,
    String? policeStation,
    String? policeOfficer,
    String? category,
    String? reporter,
  }) = _OccurModel;

  factory OccurModel.fromJson(Map<String, dynamic> json) =>
      _$OccurModelFromJson(json);
}
