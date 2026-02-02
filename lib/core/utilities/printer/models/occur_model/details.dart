import 'package:freezed_annotation/freezed_annotation.dart';

part 'details.freezed.dart';
part 'details.g.dart';

@freezed
class Details with _$Details {
  factory Details({
    @JsonKey(name: 'Category') String? category,
    @JsonKey(name: 'Narrative') String? narrative,
    @JsonKey(name: 'Description') String? description,
    @JsonKey(name: 'Document Type') String? documentType,
    @JsonKey(name: 'Equipment Type') String? equipmentType,
    @JsonKey(name: 'Name on the Document') dynamic nameOnTheDocument,
    @JsonKey(name: 'Number on the Document') dynamic numberOnTheDocument,
    @JsonKey(name: 'Date and time of accurrence')
    String? dateAndTimeOfAccurrence,
  }) = _Details;

  factory Details.fromJson(Map<String, dynamic> json) =>
      _$DetailsFromJson(json);
}
