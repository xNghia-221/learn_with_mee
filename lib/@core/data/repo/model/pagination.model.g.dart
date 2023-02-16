// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationModel _$$_PaginationModelFromJson(Map<String, dynamic> json) =>
    _$_PaginationModel(
      count: json['count'] as int?,
      total: json['total'] as int?,
      perPage: json['perPage'] as int?,
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
    );

Map<String, dynamic> _$$_PaginationModelToJson(_$_PaginationModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'total': instance.total,
      'perPage': instance.perPage,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
    };
