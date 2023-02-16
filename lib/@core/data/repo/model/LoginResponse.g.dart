// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LoginResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponse _$$_LoginResponseFromJson(Map<String, dynamic> json) =>
    _$_LoginResponse(
      status: json['status'] as bool?,
      token: json['token'] as String?,
      socialId: json['social_id'] as String?,
      expiresAt: json['expires_at'] as int?,
    );

Map<String, dynamic> _$$_LoginResponseToJson(_$_LoginResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'token': instance.token,
      'social_id': instance.socialId,
      'expires_at': instance.expiresAt,
    };
