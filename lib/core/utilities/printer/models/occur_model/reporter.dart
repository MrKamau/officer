import 'package:freezed_annotation/freezed_annotation.dart';

import 'iprs_person.dart';

part 'reporter.freezed.dart';
part 'reporter.g.dart';

@freezed
class Reporter with _$Reporter {
  factory Reporter({
    int? id,
    @JsonKey(name: 'iprs_person') IprsPerson? iprsPerson,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'email_address') String? emailAddress,
    @JsonKey(name: 'county_of_residence') String? countyOfResidence,
    @JsonKey(name: 'sub_county_of_residence') String? subCountyOfResidence,
  }) = _Reporter;

  factory Reporter.fromJson(Map<String, dynamic> json) =>
      _$ReporterFromJson(json);
}
