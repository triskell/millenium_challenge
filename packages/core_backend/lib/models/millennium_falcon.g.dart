// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'millennium_falcon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MillenniumFalcon _$$_MillenniumFalconFromJson(Map<String, dynamic> json) =>
    _$_MillenniumFalcon(
      autonomy: json['autonomy'] as int,
      departure: json['departure'] as String,
      arrival: json['arrival'] as String,
      routesDb: json['routes_db'] as String,
    );

Map<String, dynamic> _$$_MillenniumFalconToJson(_$_MillenniumFalcon instance) =>
    <String, dynamic>{
      'autonomy': instance.autonomy,
      'departure': instance.departure,
      'arrival': instance.arrival,
      'routes_db': instance.routesDb,
    };
