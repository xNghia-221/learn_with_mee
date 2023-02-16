// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_fb_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataFBModel _$$_DataFBModelFromJson(Map<String, dynamic> json) =>
    _$_DataFBModel(
      name: json['name'] as String?,
      email: json['email'] as String?,
      picture: json['picture'] == null
          ? null
          : PictureModel.fromJson(json['picture'] as Map<String, dynamic>),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_DataFBModelToJson(_$_DataFBModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'picture': instance.picture,
      'id': instance.id,
    };
