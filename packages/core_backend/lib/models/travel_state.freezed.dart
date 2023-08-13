// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TravelState {
  /// Name of the current planet the ship is at.
  String get position => throw _privateConstructorUsedError;

  /// Destination planet of the travel.
  ///
  /// Should not change during the travel.
  String get destination => throw _privateConstructorUsedError;

  /// Days spent to travel to this planet.
  int get travelDays => throw _privateConstructorUsedError;

  /// Days spent on this planet with bounty hunters.
  int get daysOnPlanetWithBountyHunters => throw _privateConstructorUsedError;

  /// Maximum capcity autonomy of the Millennium Falcon in days.
  ///
  /// Value used to restore the maximum [remainingAutonomy] when the ship
  /// refuels.
  /// Should not change during the travel.
  int get autonomyCapacity => throw _privateConstructorUsedError;

  /// Remaining autonomy of the Millennium Falcon in days.
  int get remainingAutonomy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelStateCopyWith<TravelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelStateCopyWith<$Res> {
  factory $TravelStateCopyWith(
          TravelState value, $Res Function(TravelState) then) =
      _$TravelStateCopyWithImpl<$Res, TravelState>;
  @useResult
  $Res call(
      {String position,
      String destination,
      int travelDays,
      int daysOnPlanetWithBountyHunters,
      int autonomyCapacity,
      int remainingAutonomy});
}

/// @nodoc
class _$TravelStateCopyWithImpl<$Res, $Val extends TravelState>
    implements $TravelStateCopyWith<$Res> {
  _$TravelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? destination = null,
    Object? travelDays = null,
    Object? daysOnPlanetWithBountyHunters = null,
    Object? autonomyCapacity = null,
    Object? remainingAutonomy = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      travelDays: null == travelDays
          ? _value.travelDays
          : travelDays // ignore: cast_nullable_to_non_nullable
              as int,
      daysOnPlanetWithBountyHunters: null == daysOnPlanetWithBountyHunters
          ? _value.daysOnPlanetWithBountyHunters
          : daysOnPlanetWithBountyHunters // ignore: cast_nullable_to_non_nullable
              as int,
      autonomyCapacity: null == autonomyCapacity
          ? _value.autonomyCapacity
          : autonomyCapacity // ignore: cast_nullable_to_non_nullable
              as int,
      remainingAutonomy: null == remainingAutonomy
          ? _value.remainingAutonomy
          : remainingAutonomy // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TravelStateCopyWith<$Res>
    implements $TravelStateCopyWith<$Res> {
  factory _$$_TravelStateCopyWith(
          _$_TravelState value, $Res Function(_$_TravelState) then) =
      __$$_TravelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String position,
      String destination,
      int travelDays,
      int daysOnPlanetWithBountyHunters,
      int autonomyCapacity,
      int remainingAutonomy});
}

/// @nodoc
class __$$_TravelStateCopyWithImpl<$Res>
    extends _$TravelStateCopyWithImpl<$Res, _$_TravelState>
    implements _$$_TravelStateCopyWith<$Res> {
  __$$_TravelStateCopyWithImpl(
      _$_TravelState _value, $Res Function(_$_TravelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? destination = null,
    Object? travelDays = null,
    Object? daysOnPlanetWithBountyHunters = null,
    Object? autonomyCapacity = null,
    Object? remainingAutonomy = null,
  }) {
    return _then(_$_TravelState(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      travelDays: null == travelDays
          ? _value.travelDays
          : travelDays // ignore: cast_nullable_to_non_nullable
              as int,
      daysOnPlanetWithBountyHunters: null == daysOnPlanetWithBountyHunters
          ? _value.daysOnPlanetWithBountyHunters
          : daysOnPlanetWithBountyHunters // ignore: cast_nullable_to_non_nullable
              as int,
      autonomyCapacity: null == autonomyCapacity
          ? _value.autonomyCapacity
          : autonomyCapacity // ignore: cast_nullable_to_non_nullable
              as int,
      remainingAutonomy: null == remainingAutonomy
          ? _value.remainingAutonomy
          : remainingAutonomy // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TravelState implements _TravelState {
  const _$_TravelState(
      {required this.position,
      required this.destination,
      required this.travelDays,
      required this.daysOnPlanetWithBountyHunters,
      required this.autonomyCapacity,
      required this.remainingAutonomy});

  /// Name of the current planet the ship is at.
  @override
  final String position;

  /// Destination planet of the travel.
  ///
  /// Should not change during the travel.
  @override
  final String destination;

  /// Days spent to travel to this planet.
  @override
  final int travelDays;

  /// Days spent on this planet with bounty hunters.
  @override
  final int daysOnPlanetWithBountyHunters;

  /// Maximum capcity autonomy of the Millennium Falcon in days.
  ///
  /// Value used to restore the maximum [remainingAutonomy] when the ship
  /// refuels.
  /// Should not change during the travel.
  @override
  final int autonomyCapacity;

  /// Remaining autonomy of the Millennium Falcon in days.
  @override
  final int remainingAutonomy;

  @override
  String toString() {
    return 'TravelState(position: $position, destination: $destination, travelDays: $travelDays, daysOnPlanetWithBountyHunters: $daysOnPlanetWithBountyHunters, autonomyCapacity: $autonomyCapacity, remainingAutonomy: $remainingAutonomy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TravelState &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.travelDays, travelDays) ||
                other.travelDays == travelDays) &&
            (identical(other.daysOnPlanetWithBountyHunters,
                    daysOnPlanetWithBountyHunters) ||
                other.daysOnPlanetWithBountyHunters ==
                    daysOnPlanetWithBountyHunters) &&
            (identical(other.autonomyCapacity, autonomyCapacity) ||
                other.autonomyCapacity == autonomyCapacity) &&
            (identical(other.remainingAutonomy, remainingAutonomy) ||
                other.remainingAutonomy == remainingAutonomy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      position,
      destination,
      travelDays,
      daysOnPlanetWithBountyHunters,
      autonomyCapacity,
      remainingAutonomy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TravelStateCopyWith<_$_TravelState> get copyWith =>
      __$$_TravelStateCopyWithImpl<_$_TravelState>(this, _$identity);
}

abstract class _TravelState implements TravelState {
  const factory _TravelState(
      {required final String position,
      required final String destination,
      required final int travelDays,
      required final int daysOnPlanetWithBountyHunters,
      required final int autonomyCapacity,
      required final int remainingAutonomy}) = _$_TravelState;

  @override

  /// Name of the current planet the ship is at.
  String get position;
  @override

  /// Destination planet of the travel.
  ///
  /// Should not change during the travel.
  String get destination;
  @override

  /// Days spent to travel to this planet.
  int get travelDays;
  @override

  /// Days spent on this planet with bounty hunters.
  int get daysOnPlanetWithBountyHunters;
  @override

  /// Maximum capcity autonomy of the Millennium Falcon in days.
  ///
  /// Value used to restore the maximum [remainingAutonomy] when the ship
  /// refuels.
  /// Should not change during the travel.
  int get autonomyCapacity;
  @override

  /// Remaining autonomy of the Millennium Falcon in days.
  int get remainingAutonomy;
  @override
  @JsonKey(ignore: true)
  _$$_TravelStateCopyWith<_$_TravelState> get copyWith =>
      throw _privateConstructorUsedError;
}
