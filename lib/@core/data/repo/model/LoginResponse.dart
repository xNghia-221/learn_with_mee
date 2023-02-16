import 'package:freezed_annotation/freezed_annotation.dart';
part 'LoginResponse.freezed.dart';
part 'LoginResponse.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  factory LoginResponse({
    @JsonKey(name:'status') bool? status,
    @JsonKey(name:'token') String? token,
    @JsonKey(name:'social_id') String? socialId,
    @JsonKey(name:'expires_at') int? expiresAt,
  })= _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
