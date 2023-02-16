// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials_token.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CredentialsToken _$$_CredentialsTokenFromJson(Map<String, dynamic> json) =>
    _$_CredentialsToken(
      tokenType: json['token_type'] as String?,
      expiresIn: json['expires_in'] as int?,
      accessToken: json['access_token'] as String?,
    );

Map<String, dynamic> _$$_CredentialsTokenToJson(_$_CredentialsToken instance) =>
    <String, dynamic>{
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
      'access_token': instance.accessToken,
    };
