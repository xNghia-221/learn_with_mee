// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workHistory.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkHistoryModel _$$_WorkHistoryModelFromJson(Map<String, dynamic> json) =>
    _$_WorkHistoryModel(
      businessName: json['business_name'] as String?,
      positionName: json['position_name'] as String?,
      id: json['position_id'] as int?,
    );

Map<String, dynamic> _$$_WorkHistoryModelToJson(_$_WorkHistoryModel instance) =>
    <String, dynamic>{
      'business_name': instance.businessName,
      'position_name': instance.positionName,
      'position_id': instance.id,
    };
