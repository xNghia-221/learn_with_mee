import 'package:freezed_annotation/freezed_annotation.dart';
part 'credentials_token.model.freezed.dart';
part 'credentials_token.model.g.dart';

@freezed
class CredentialsToken with _$CredentialsToken {
  factory CredentialsToken({
    @JsonKey(name:'token_type') String? tokenType,
    @JsonKey(name:'expires_in') int? expiresIn,
    @JsonKey(name:'access_token') String? accessToken,
  })= _CredentialsToken;

  factory CredentialsToken.fromJson(Map<String, dynamic> json) =>
      _$CredentialsTokenFromJson(json);
}
