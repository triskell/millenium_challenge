// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Route {
  /// Name of the origin planet.
  ///
  /// Cannot be null or empty.
  String get origin => throw _privateConstructorUsedError;

  /// Name of the destination planet.
  ///
  /// Cannot be null or empty.
  String get destination => throw _privateConstructorUsedError;

  /// Number days needed to travel from one planet to the other.
  ///
  /// Must be strictly positive.
  int get travelTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RouteCopyWith<Route> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) then) =
      _$RouteCopyWithImpl<$Res, Route>;
  @useResult
  $Res call({String origin, String destination, int travelTime});
}

/// @nodoc
class _$RouteCopyWithImpl<$Res, $Val extends Route>
    implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = null,
    Object? destination = null,
    Object? travelTime = null,
  }) {
    return _then(_value.copyWith(
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      travelTime: null == travelTime
          ? _value.travelTime
          : travelTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RouteCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$$_RouteCopyWith(_$_Route value, $Res Function(_$_Route) then) =
      __$$_RouteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String origin, String destination, int travelTime});
}

/// @nodoc
class __$$_RouteCopyWithImpl<$Res> extends _$RouteCopyWithImpl<$Res, _$_Route>
    implements _$$_RouteCopyWith<$Res> {
  __$$_RouteCopyWithImpl(_$_Route _value, $Res Function(_$_Route) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = null,
    Object? destination = null,
    Object? travelTime = null,
  }) {
    return _then(_$_Route(
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      travelTime: null == travelTime
          ? _value.travelTime
          : travelTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Route implements _Route {
  _$_Route(
      {required this.origin,
      required this.destination,
      required this.travelTime});

  /// Name of the origin planet.
  ///
  /// Cannot be null or empty.
  @override
  final String origin;

  /// Name of the destination planet.
  ///
  /// Cannot be null or empty.
  @override
  final String destination;

  /// Number days needed to travel from one planet to the other.
  ///
  /// Must be strictly positive.
  @override
  final int travelTime;

  @override
  String toString() {
    return 'Route(origin: $origin, destination: $destination, travelTime: $travelTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Route &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.travelTime, travelTime) ||
                other.travelTime == travelTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, origin, destination, travelTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RouteCopyWith<_$_Route> get copyWith =>
      __$$_RouteCopyWithImpl<_$_Route>(this, _$identity);
}

abstract class _Route implements Route {
  factory _Route(
      {required final String origin,
      required final String destination,
      required final int travelTime}) = _$_Route;

  @override

  /// Name of the origin planet.
  ///
  /// Cannot be null or empty.
  String get origin;
  @override

  /// Name of the destination planet.
  ///
  /// Cannot be null or empty.
  String get destination;
  @override

  /// Number days needed to travel from one planet to the other.
  ///
  /// Must be strictly positive.
  int get travelTime;
  @override
  @JsonKey(ignore: true)
  _$$_RouteCopyWith<_$_Route> get copyWith =>
      throw _privateConstructorUsedError;
}
