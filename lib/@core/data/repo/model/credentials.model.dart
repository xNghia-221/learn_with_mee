import 'package:freezed_annotation/freezed_annotation.dart';
part 'credentials.model.freezed.dart';
part 'credentials.model.g.dart';

@freezed
class Credentials with _$Credentials {
  factory Credentials({
    @JsonKey(name:'grant_type') String? grantType,
    @JsonKey(name:'client_id') String? clientId,
    @JsonKey(name:'client_secret') String? clientSecret,
    @JsonKey(name:'scope') String? scope,
  })= _Credentials;

  factory Credentials.fromJson(Map<String, dynamic> json) =>
      _$CredentialsFromJson(json);
}
