// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'occurrence.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Occurrence _$OccurrenceFromJson(Map<String, dynamic> json) {
  return _Occurrence.fromJson(json);
}

/// @nodoc
mixin _$Occurrence {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'ob_no')
  String? get obNo => throw _privateConstructorUsedError;
  String? get narrative => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  dynamic get lat => throw _privateConstructorUsedError;
  dynamic get long => throw _privateConstructorUsedError;
  String? get module => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_complete')
  bool? get isComplete => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_closed')
  bool? get isClosed => throw _privateConstructorUsedError;
  @JsonKey(name: 'posted_date')
  DateTime? get postedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'police_station')
  int? get policeStation => throw _privateConstructorUsedError;
  @JsonKey(name: 'police_officer')
  int? get policeOfficer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OccurrenceCopyWith<Occurrence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccurrenceCopyWith<$Res> {
  factory $OccurrenceCopyWith(
          Occurrence value, $Res Function(Occurrence) then) =
      _$OccurrenceCopyWithImpl<$Res, Occurrence>;
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'police_officer') int? policeOfficer});
}

/// @nodoc
class _$OccurrenceCopyWithImpl<$Res, $Val extends Occurrence>
    implements $OccurrenceCopyWith<$Res> {
  _$OccurrenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? obNo = freezed,
    Object? narrative = freezed,
    Object? location = freezed,
    Object? lat = freezed,
    Object? long = freezed,
    Object? module = freezed,
    Object? isComplete = freezed,
    Object? isClosed = freezed,
    Object? postedDate = freezed,
    Object? policeStation = freezed,
    Object? policeOfficer = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      obNo: freezed == obNo
          ? _value.obNo
          : obNo // ignore: cast_nullable_to_non_nullable
              as String?,
      narrative: freezed == narrative
          ? _value.narrative
          : narrative // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as dynamic,
      module: freezed == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as String?,
      isComplete: freezed == isComplete
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      isClosed: freezed == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool?,
      postedDate: freezed == postedDate
          ? _value.postedDate
          : postedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      policeStation: freezed == policeStation
          ? _value.policeStation
          : policeStation // ignore: cast_nullable_to_non_nullable
              as int?,
      policeOfficer: freezed == policeOfficer
          ? _value.policeOfficer
          : policeOfficer // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OccurrenceImplCopyWith<$Res>
    implements $OccurrenceCopyWith<$Res> {
  factory _$$OccurrenceImplCopyWith(
          _$OccurrenceImpl value, $Res Function(_$OccurrenceImpl) then) =
      __$$OccurrenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'police_officer') int? policeOfficer});
}

/// @nodoc
class __$$OccurrenceImplCopyWithImpl<$Res>
    extends _$OccurrenceCopyWithImpl<$Res, _$OccurrenceImpl>
    implements _$$OccurrenceImplCopyWith<$Res> {
  __$$OccurrenceImplCopyWithImpl(
      _$OccurrenceImpl _value, $Res Function(_$OccurrenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? obNo = freezed,
    Object? narrative = freezed,
    Object? location = freezed,
    Object? lat = freezed,
    Object? long = freezed,
    Object? module = freezed,
    Object? isComplete = freezed,
    Object? isClosed = freezed,
    Object? postedDate = freezed,
    Object? policeStation = freezed,
    Object? policeOfficer = freezed,
  }) {
    return _then(_$OccurrenceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      obNo: freezed == obNo
          ? _value.obNo
          : obNo // ignore: cast_nullable_to_non_nullable
              as String?,
      narrative: freezed == narrative
          ? _value.narrative
          : narrative // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as dynamic,
      module: freezed == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as String?,
      isComplete: freezed == isComplete
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      isClosed: freezed == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool?,
      postedDate: freezed == postedDate
          ? _value.postedDate
          : postedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      policeStation: freezed == policeStation
          ? _value.policeStation
          : policeStation // ignore: cast_nullable_to_non_nullable
              as int?,
      policeOfficer: freezed == policeOfficer
          ? _value.policeOfficer
          : policeOfficer // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OccurrenceImpl implements _Occurrence {
  _$OccurrenceImpl(
      {this.id,
      @JsonKey(name: 'ob_no') this.obNo,
      this.narrative,
      this.location,
      this.lat,
      this.long,
      this.module,
      @JsonKey(name: 'is_complete') this.isComplete,
      @JsonKey(name: 'is_closed') this.isClosed,
      @JsonKey(name: 'posted_date') this.postedDate,
      @JsonKey(name: 'police_station') this.policeStation,
      @JsonKey(name: 'police_officer') this.policeOfficer});

  factory _$OccurrenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$OccurrenceImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'ob_no')
  final String? obNo;
  @override
  final String? narrative;
  @override
  final String? location;
  @override
  final dynamic lat;
  @override
  final dynamic long;
  @override
  final String? module;
  @override
  @JsonKey(name: 'is_complete')
  final bool? isComplete;
  @override
  @JsonKey(name: 'is_closed')
  final bool? isClosed;
  @override
  @JsonKey(name: 'posted_date')
  final DateTime? postedDate;
  @override
  @JsonKey(name: 'police_station')
  final int? policeStation;
  @override
  @JsonKey(name: 'police_officer')
  final int? policeOfficer;

  @override
  String toString() {
    return 'Occurrence(id: $id, obNo: $obNo, narrative: $narrative, location: $location, lat: $lat, long: $long, module: $module, isComplete: $isComplete, isClosed: $isClosed, postedDate: $postedDate, policeStation: $policeStation, policeOfficer: $policeOfficer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OccurrenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.obNo, obNo) || other.obNo == obNo) &&
            (identical(other.narrative, narrative) ||
                other.narrative == narrative) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.long, long) &&
            (identical(other.module, module) || other.module == module) &&
            (identical(other.isComplete, isComplete) ||
                other.isComplete == isComplete) &&
            (identical(other.isClosed, isClosed) ||
                other.isClosed == isClosed) &&
            (identical(other.postedDate, postedDate) ||
                other.postedDate == postedDate) &&
            (identical(other.policeStation, policeStation) ||
                other.policeStation == policeStation) &&
            (identical(other.policeOfficer, policeOfficer) ||
                other.policeOfficer == policeOfficer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      obNo,
      narrative,
      location,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(long),
      module,
      isComplete,
      isClosed,
      postedDate,
      policeStation,
      policeOfficer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OccurrenceImplCopyWith<_$OccurrenceImpl> get copyWith =>
      __$$OccurrenceImplCopyWithImpl<_$OccurrenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OccurrenceImplToJson(
      this,
    );
  }
}

abstract class _Occurrence implements Occurrence {
  factory _Occurrence(
          {final int? id,
          @JsonKey(name: 'ob_no') final String? obNo,
          final String? narrative,
          final String? location,
          final dynamic lat,
          final dynamic long,
          final String? module,
          @JsonKey(name: 'is_complete') final bool? isComplete,
          @JsonKey(name: 'is_closed') final bool? isClosed,
          @JsonKey(name: 'posted_date') final DateTime? postedDate,
          @JsonKey(name: 'police_station') final int? policeStation,
          @JsonKey(name: 'police_officer') final int? policeOfficer}) =
      _$OccurrenceImpl;

  factory _Occurrence.fromJson(Map<String, dynamic> json) =
      _$OccurrenceImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'ob_no')
  String? get obNo;
  @override
  String? get narrative;
  @override
  String? get location;
  @override
  dynamic get lat;
  @override
  dynamic get long;
  @override
  String? get module;
  @override
  @JsonKey(name: 'is_complete')
  bool? get isComplete;
  @override
  @JsonKey(name: 'is_closed')
  bool? get isClosed;
  @override
  @JsonKey(name: 'posted_date')
  DateTime? get postedDate;
  @override
  @JsonKey(name: 'police_station')
  int? get policeStation;
  @override
  @JsonKey(name: 'police_officer')
  int? get policeOfficer;
  @override
  @JsonKey(ignore: true)
  _$$OccurrenceImplCopyWith<_$OccurrenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
