// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Credentials _$$_CredentialsFromJson(Map<String, dynamic> json) =>
    _$_Credentials(
      grantType: json['grant_type'] as String?,
      clientId: json['client_id'] as String?,
      clientSecret: json['client_secret'] as String?,
      scope: json['scope'] as String?,
    );

Map<String, dynamic> _$$_CredentialsToJson(_$_Credentials instance) =>
    <String, dynamic>{
      'grant_type': instance.grantType,
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
      'scope': instance.scope,
    };
