// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginInfo.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginInfoModel _$$_LoginInfoModelFromJson(Map<String, dynamic> json) =>
    _$_LoginInfoModel(
      accessToken: json['access_token'] as String?,
      tokenType: json['token_type'] as String?,
      expiresAt: json['expires_at'] as String?,
      loginType: json['loginType'] as int?,
      email: json['email'] as String?,
      firebaseUid: json['firebaseUid'] as String?,
    );

Map<String, dynamic> _$$_LoginInfoModelToJson(_$_LoginInfoModel instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'expires_at': instance.expiresAt,
      'loginType': instance.loginType,
      'email': instance.email,
      'firebaseUid': instance.firebaseUid,
    };
