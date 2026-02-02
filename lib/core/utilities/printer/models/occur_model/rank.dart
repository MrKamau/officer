import 'package:freezed_annotation/freezed_annotation.dart';

part 'rank.freezed.dart';
part 'rank.g.dart';

@freezed
class Rank with _$Rank {
  factory Rank({
    int? id,
    String? name,
  }) = _Rank;

  factory Rank.fromJson(Map<String, dynamic> json) => _$RankFromJson(json);
}
