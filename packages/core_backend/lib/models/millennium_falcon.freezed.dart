// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'millennium_falcon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MillenniumFalcon _$MillenniumFalconFromJson(Map<String, dynamic> json) {
  return _MillenniumFalcon.fromJson(json);
}

/// @nodoc
mixin _$MillenniumFalcon {
  /// Autonomy of the Millennium Falcon in days.
  int get autonomy => throw _privateConstructorUsedError;

  /// Planet where the Millennium Falcon is on day 0.
  String get departure => throw _privateConstructorUsedError;

  /// Planet where the Millennium Falcon must be at or before countdown.
  String get arrival => throw _privateConstructorUsedError;

  /// Path toward a SQLite database file containing the routes.
  ///
  /// The path can be either absolute or relative to the location of the
  /// `millennium-falcon.json` file itself.
  @JsonKey(name: 'routes_db')
  String get routesDb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MillenniumFalconCopyWith<MillenniumFalcon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MillenniumFalconCopyWith<$Res> {
  factory $MillenniumFalconCopyWith(
          MillenniumFalcon value, $Res Function(MillenniumFalcon) then) =
      _$MillenniumFalconCopyWithImpl<$Res, MillenniumFalcon>;
  @useResult
  $Res call(
      {int autonomy,
      String departure,
      String arrival,
      @JsonKey(name: 'routes_db') String routesDb});
}

/// @nodoc
class _$MillenniumFalconCopyWithImpl<$Res, $Val extends MillenniumFalcon>
    implements $MillenniumFalconCopyWith<$Res> {
  _$MillenniumFalconCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autonomy = null,
    Object? departure = null,
    Object? arrival = null,
    Object? routesDb = null,
  }) {
    return _then(_value.copyWith(
      autonomy: null == autonomy
          ? _value.autonomy
          : autonomy // ignore: cast_nullable_to_non_nullable
              as int,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String,
      arrival: null == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as String,
      routesDb: null == routesDb
          ? _value.routesDb
          : routesDb // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MillenniumFalconCopyWith<$Res>
    implements $MillenniumFalconCopyWith<$Res> {
  factory _$$_MillenniumFalconCopyWith(
          _$_MillenniumFalcon value, $Res Function(_$_MillenniumFalcon) then) =
      __$$_MillenniumFalconCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int autonomy,
      String departure,
      String arrival,
      @JsonKey(name: 'routes_db') String routesDb});
}

/// @nodoc
class __$$_MillenniumFalconCopyWithImpl<$Res>
    extends _$MillenniumFalconCopyWithImpl<$Res, _$_MillenniumFalcon>
    implements _$$_MillenniumFalconCopyWith<$Res> {
  __$$_MillenniumFalconCopyWithImpl(
      _$_MillenniumFalcon _value, $Res Function(_$_MillenniumFalcon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autonomy = null,
    Object? departure = null,
    Object? arrival = null,
    Object? routesDb = null,
  }) {
    return _then(_$_MillenniumFalcon(
      autonomy: null == autonomy
          ? _value.autonomy
          : autonomy // ignore: cast_nullable_to_non_nullable
              as int,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String,
      arrival: null == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as String,
      routesDb: null == routesDb
          ? _value.routesDb
          : routesDb // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MillenniumFalcon implements _MillenniumFalcon {
  _$_MillenniumFalcon(
      {required this.autonomy,
      required this.departure,
      required this.arrival,
      @JsonKey(name: 'routes_db') required this.routesDb});

  factory _$_MillenniumFalcon.fromJson(Map<String, dynamic> json) =>
      _$$_MillenniumFalconFromJson(json);

  /// Autonomy of the Millennium Falcon in days.
  @override
  final int autonomy;

  /// Planet where the Millennium Falcon is on day 0.
  @override
  final String departure;

  /// Planet where the Millennium Falcon must be at or before countdown.
  @override
  final String arrival;

  /// Path toward a SQLite database file containing the routes.
  ///
  /// The path can be either absolute or relative to the location of the
  /// `millennium-falcon.json` file itself.
  @override
  @JsonKey(name: 'routes_db')
  final String routesDb;

  @override
  String toString() {
    return 'MillenniumFalcon(autonomy: $autonomy, departure: $departure, arrival: $arrival, routesDb: $routesDb)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MillenniumFalcon &&
            (identical(other.autonomy, autonomy) ||
                other.autonomy == autonomy) &&
            (identical(other.departure, departure) ||
                other.departure == departure) &&
            (identical(other.arrival, arrival) || other.arrival == arrival) &&
            (identical(other.routesDb, routesDb) ||
                other.routesDb == routesDb));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, autonomy, departure, arrival, routesDb);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MillenniumFalconCopyWith<_$_MillenniumFalcon> get copyWith =>
      __$$_MillenniumFalconCopyWithImpl<_$_MillenniumFalcon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MillenniumFalconToJson(
      this,
    );
  }
}

abstract class _MillenniumFalcon implements MillenniumFalcon {
  factory _MillenniumFalcon(
          {required final int autonomy,
          required final String departure,
          required final String arrival,
          @JsonKey(name: 'routes_db') required final String routesDb}) =
      _$_MillenniumFalcon;

  factory _MillenniumFalcon.fromJson(Map<String, dynamic> json) =
      _$_MillenniumFalcon.fromJson;

  @override

  /// Autonomy of the Millennium Falcon in days.
  int get autonomy;
  @override

  /// Planet where the Millennium Falcon is on day 0.
  String get departure;
  @override

  /// Planet where the Millennium Falcon must be at or before countdown.
  String get arrival;
  @override

  /// Path toward a SQLite database file containing the routes.
  ///
  /// The path can be either absolute or relative to the location of the
  /// `millennium-falcon.json` file itself.
  @JsonKey(name: 'routes_db')
  String get routesDb;
  @override
  @JsonKey(ignore: true)
  _$$_MillenniumFalconCopyWith<_$_MillenniumFalcon> get copyWith =>
      throw _privateConstructorUsedError;
}
