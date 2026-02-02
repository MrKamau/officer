// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'occur_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OccurModel _$OccurModelFromJson(Map<String, dynamic> json) {
  return _OccurModel.fromJson(json);
}

/// @nodoc
mixin _$OccurModel {
  String? get date => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get obNo => throw _privateConstructorUsedError;
  String? get policeStation => throw _privateConstructorUsedError;
  String? get policeOfficer => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get reporter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OccurModelCopyWith<OccurModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccurModelCopyWith<$Res> {
  factory $OccurModelCopyWith(
          OccurModel value, $Res Function(OccurModel) then) =
      _$OccurModelCopyWithImpl<$Res, OccurModel>;
  @useResult
  $Res call(
      {String? date,
      String? time,
      String? location,
      String? obNo,
      String? policeStation,
      String? policeOfficer,
      String? category,
      String? reporter});
}

/// @nodoc
class _$OccurModelCopyWithImpl<$Res, $Val extends OccurModel>
    implements $OccurModelCopyWith<$Res> {
  _$OccurModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? time = freezed,
    Object? location = freezed,
    Object? obNo = freezed,
    Object? policeStation = freezed,
    Object? policeOfficer = freezed,
    Object? category = freezed,
    Object? reporter = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      obNo: freezed == obNo
          ? _value.obNo
          : obNo // ignore: cast_nullable_to_non_nullable
              as String?,
      policeStation: freezed == policeStation
          ? _value.policeStation
          : policeStation // ignore: cast_nullable_to_non_nullable
              as String?,
      policeOfficer: freezed == policeOfficer
          ? _value.policeOfficer
          : policeOfficer // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      reporter: freezed == reporter
          ? _value.reporter
          : reporter // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OccurModelImplCopyWith<$Res>
    implements $OccurModelCopyWith<$Res> {
  factory _$$OccurModelImplCopyWith(
          _$OccurModelImpl value, $Res Function(_$OccurModelImpl) then) =
      __$$OccurModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? date,
      String? time,
      String? location,
      String? obNo,
      String? policeStation,
      String? policeOfficer,
      String? category,
      String? reporter});
}

/// @nodoc
class __$$OccurModelImplCopyWithImpl<$Res>
    extends _$OccurModelCopyWithImpl<$Res, _$OccurModelImpl>
    implements _$$OccurModelImplCopyWith<$Res> {
  __$$OccurModelImplCopyWithImpl(
      _$OccurModelImpl _value, $Res Function(_$OccurModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? time = freezed,
    Object? location = freezed,
    Object? obNo = freezed,
    Object? policeStation = freezed,
    Object? policeOfficer = freezed,
    Object? category = freezed,
    Object? reporter = freezed,
  }) {
    return _then(_$OccurModelImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      obNo: freezed == obNo
          ? _value.obNo
          : obNo // ignore: cast_nullable_to_non_nullable
              as String?,
      policeStation: freezed == policeStation
          ? _value.policeStation
          : policeStation // ignore: cast_nullable_to_non_nullable
              as String?,
      policeOfficer: freezed == policeOfficer
          ? _value.policeOfficer
          : policeOfficer // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      reporter: freezed == reporter
          ? _value.reporter
          : reporter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OccurModelImpl implements _OccurModel {
  _$OccurModelImpl(
      {this.date,
      this.time,
      this.location,
      this.obNo,
      this.policeStation,
      this.policeOfficer,
      this.category,
      this.reporter});

  factory _$OccurModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OccurModelImplFromJson(json);

  @override
  final String? date;
  @override
  final String? time;
  @override
  final String? location;
  @override
  final String? obNo;
  @override
  final String? policeStation;
  @override
  final String? policeOfficer;
  @override
  final String? category;
  @override
  final String? reporter;

  @override
  String toString() {
    return 'OccurModel(date: $date, time: $time, location: $location, obNo: $obNo, policeStation: $policeStation, policeOfficer: $policeOfficer, category: $category, reporter: $reporter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OccurModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.obNo, obNo) || other.obNo == obNo) &&
            (identical(other.policeStation, policeStation) ||
                other.policeStation == policeStation) &&
            (identical(other.policeOfficer, policeOfficer) ||
                other.policeOfficer == policeOfficer) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.reporter, reporter) ||
                other.reporter == reporter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, time, location, obNo,
      policeStation, policeOfficer, category, reporter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OccurModelImplCopyWith<_$OccurModelImpl> get copyWith =>
      __$$OccurModelImplCopyWithImpl<_$OccurModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OccurModelImplToJson(
      this,
    );
  }
}

abstract class _OccurModel implements OccurModel {
  factory _OccurModel(
      {final String? date,
      final String? time,
      final String? location,
      final String? obNo,
      final String? policeStation,
      final String? policeOfficer,
      final String? category,
      final String? reporter}) = _$OccurModelImpl;

  factory _OccurModel.fromJson(Map<String, dynamic> json) =
      _$OccurModelImpl.fromJson;

  @override
  String? get date;
  @override
  String? get time;
  @override
  String? get location;
  @override
  String? get obNo;
  @override
  String? get policeStation;
  @override
  String? get policeOfficer;
  @override
  String? get category;
  @override
  String? get reporter;
  @override
  @JsonKey(ignore: true)
  _$$OccurModelImplCopyWith<_$OccurModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
