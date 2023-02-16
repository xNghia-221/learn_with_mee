// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PictureModel _$$_PictureModelFromJson(Map<String, dynamic> json) =>
    _$_PictureModel(
      data: json['data'] == null
          ? null
          : DataPictureFBModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PictureModelToJson(_$_PictureModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
