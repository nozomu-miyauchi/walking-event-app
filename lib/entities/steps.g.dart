// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'steps.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Steps _$StepsFromJson(Map<String, dynamic> json) => _Steps(
  employeeId: json['employeeId'] as String,
  name: json['name'] as String,
  steps: (json['steps'] as num).toInt(),
  rank: (json['rank'] as num).toInt(),
);

Map<String, dynamic> _$StepsToJson(_Steps instance) => <String, dynamic>{
  'employeeId': instance.employeeId,
  'name': instance.name,
  'steps': instance.steps,
  'rank': instance.rank,
};
