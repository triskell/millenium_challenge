// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empire.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Empire _$$_EmpireFromJson(Map<String, dynamic> json) => _$_Empire(
      countdown: json['countdown'] as int,
      bountyHunters: (json['bounty_hunters'] as List<dynamic>)
          .map((e) => BountyHunter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EmpireToJson(_$_Empire instance) => <String, dynamic>{
      'countdown': instance.countdown,
      'bounty_hunters': instance.bountyHunters.map((e) => e.toJson()).toList(),
    };
