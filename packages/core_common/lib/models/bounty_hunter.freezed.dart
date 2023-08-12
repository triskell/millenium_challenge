// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bounty_hunter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BountyHunter _$BountyHunterFromJson(Map<String, dynamic> json) {
  return _BountyHunter.fromJson(json);
}

/// @nodoc
mixin _$BountyHunter {
  /// Name of the planet.
  ///
  /// It cannot be null or empty.
  String get planet => throw _privateConstructorUsedError;

  /// Day the bounty hunters are on the planet.
  ///
  /// 0 represents the first day of the mission, i.e. today.
  int get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BountyHunterCopyWith<BountyHunter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BountyHunterCopyWith<$Res> {
  factory $BountyHunterCopyWith(
          BountyHunter value, $Res Function(BountyHunter) then) =
      _$BountyHunterCopyWithImpl<$Res, BountyHunter>;
  @useResult
  $Res call({String planet, int day});
}

/// @nodoc
class _$BountyHunterCopyWithImpl<$Res, $Val extends BountyHunter>
    implements $BountyHunterCopyWith<$Res> {
  _$BountyHunterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planet = null,
    Object? day = null,
  }) {
    return _then(_value.copyWith(
      planet: null == planet
          ? _value.planet
          : planet // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BountyHunterCopyWith<$Res>
    implements $BountyHunterCopyWith<$Res> {
  factory _$$_BountyHunterCopyWith(
          _$_BountyHunter value, $Res Function(_$_BountyHunter) then) =
      __$$_BountyHunterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String planet, int day});
}

/// @nodoc
class __$$_BountyHunterCopyWithImpl<$Res>
    extends _$BountyHunterCopyWithImpl<$Res, _$_BountyHunter>
    implements _$$_BountyHunterCopyWith<$Res> {
  __$$_BountyHunterCopyWithImpl(
      _$_BountyHunter _value, $Res Function(_$_BountyHunter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planet = null,
    Object? day = null,
  }) {
    return _then(_$_BountyHunter(
      planet: null == planet
          ? _value.planet
          : planet // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BountyHunter implements _BountyHunter {
  const _$_BountyHunter({required this.planet, required this.day});

  factory _$_BountyHunter.fromJson(Map<String, dynamic> json) =>
      _$$_BountyHunterFromJson(json);

  /// Name of the planet.
  ///
  /// It cannot be null or empty.
  @override
  final String planet;

  /// Day the bounty hunters are on the planet.
  ///
  /// 0 represents the first day of the mission, i.e. today.
  @override
  final int day;

  @override
  String toString() {
    return 'BountyHunter(planet: $planet, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BountyHunter &&
            (identical(other.planet, planet) || other.planet == planet) &&
            (identical(other.day, day) || other.day == day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, planet, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BountyHunterCopyWith<_$_BountyHunter> get copyWith =>
      __$$_BountyHunterCopyWithImpl<_$_BountyHunter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BountyHunterToJson(
      this,
    );
  }
}

abstract class _BountyHunter implements BountyHunter {
  const factory _BountyHunter(
      {required final String planet, required final int day}) = _$_BountyHunter;

  factory _BountyHunter.fromJson(Map<String, dynamic> json) =
      _$_BountyHunter.fromJson;

  @override

  /// Name of the planet.
  ///
  /// It cannot be null or empty.
  String get planet;
  @override

  /// Day the bounty hunters are on the planet.
  ///
  /// 0 represents the first day of the mission, i.e. today.
  int get day;
  @override
  @JsonKey(ignore: true)
  _$$_BountyHunterCopyWith<_$_BountyHunter> get copyWith =>
      throw _privateConstructorUsedError;
}
