// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'empire.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Empire _$EmpireFromJson(Map<String, dynamic> json) {
  return _Empire.fromJson(json);
}

/// @nodoc
mixin _$Empire {
  /// Number of days before the Death Star annihilates Endor.
  int get countdown => throw _privateConstructorUsedError;

  /// List of all locations where Bounty Hunter are scheduled to be present.
  @JsonKey(name: 'bounty_hunters')
  List<BountyHunter> get bountyHunters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmpireCopyWith<Empire> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmpireCopyWith<$Res> {
  factory $EmpireCopyWith(Empire value, $Res Function(Empire) then) =
      _$EmpireCopyWithImpl<$Res, Empire>;
  @useResult
  $Res call(
      {int countdown,
      @JsonKey(name: 'bounty_hunters') List<BountyHunter> bountyHunters});
}

/// @nodoc
class _$EmpireCopyWithImpl<$Res, $Val extends Empire>
    implements $EmpireCopyWith<$Res> {
  _$EmpireCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countdown = null,
    Object? bountyHunters = null,
  }) {
    return _then(_value.copyWith(
      countdown: null == countdown
          ? _value.countdown
          : countdown // ignore: cast_nullable_to_non_nullable
              as int,
      bountyHunters: null == bountyHunters
          ? _value.bountyHunters
          : bountyHunters // ignore: cast_nullable_to_non_nullable
              as List<BountyHunter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmpireCopyWith<$Res> implements $EmpireCopyWith<$Res> {
  factory _$$_EmpireCopyWith(_$_Empire value, $Res Function(_$_Empire) then) =
      __$$_EmpireCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int countdown,
      @JsonKey(name: 'bounty_hunters') List<BountyHunter> bountyHunters});
}

/// @nodoc
class __$$_EmpireCopyWithImpl<$Res>
    extends _$EmpireCopyWithImpl<$Res, _$_Empire>
    implements _$$_EmpireCopyWith<$Res> {
  __$$_EmpireCopyWithImpl(_$_Empire _value, $Res Function(_$_Empire) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countdown = null,
    Object? bountyHunters = null,
  }) {
    return _then(_$_Empire(
      countdown: null == countdown
          ? _value.countdown
          : countdown // ignore: cast_nullable_to_non_nullable
              as int,
      bountyHunters: null == bountyHunters
          ? _value._bountyHunters
          : bountyHunters // ignore: cast_nullable_to_non_nullable
              as List<BountyHunter>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Empire implements _Empire {
  const _$_Empire(
      {required this.countdown,
      @JsonKey(name: 'bounty_hunters')
      required final List<BountyHunter> bountyHunters})
      : _bountyHunters = bountyHunters;

  factory _$_Empire.fromJson(Map<String, dynamic> json) =>
      _$$_EmpireFromJson(json);

  /// Number of days before the Death Star annihilates Endor.
  @override
  final int countdown;

  /// List of all locations where Bounty Hunter are scheduled to be present.
  final List<BountyHunter> _bountyHunters;

  /// List of all locations where Bounty Hunter are scheduled to be present.
  @override
  @JsonKey(name: 'bounty_hunters')
  List<BountyHunter> get bountyHunters {
    if (_bountyHunters is EqualUnmodifiableListView) return _bountyHunters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bountyHunters);
  }

  @override
  String toString() {
    return 'Empire(countdown: $countdown, bountyHunters: $bountyHunters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Empire &&
            (identical(other.countdown, countdown) ||
                other.countdown == countdown) &&
            const DeepCollectionEquality()
                .equals(other._bountyHunters, _bountyHunters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, countdown,
      const DeepCollectionEquality().hash(_bountyHunters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmpireCopyWith<_$_Empire> get copyWith =>
      __$$_EmpireCopyWithImpl<_$_Empire>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmpireToJson(
      this,
    );
  }
}

abstract class _Empire implements Empire {
  const factory _Empire(
      {required final int countdown,
      @JsonKey(name: 'bounty_hunters')
      required final List<BountyHunter> bountyHunters}) = _$_Empire;

  factory _Empire.fromJson(Map<String, dynamic> json) = _$_Empire.fromJson;

  @override

  /// Number of days before the Death Star annihilates Endor.
  int get countdown;
  @override

  /// List of all locations where Bounty Hunter are scheduled to be present.
  @JsonKey(name: 'bounty_hunters')
  List<BountyHunter> get bountyHunters;
  @override
  @JsonKey(ignore: true)
  _$$_EmpireCopyWith<_$_Empire> get copyWith =>
      throw _privateConstructorUsedError;
}
