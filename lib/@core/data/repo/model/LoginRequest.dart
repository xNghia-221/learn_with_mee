import 'package:freezed_annotation/freezed_annotation.dart';
part 'LoginRequest.freezed.dart';
part 'LoginRequest.g.dart';

@freezed
class LoginRequest with _$LoginRequest {
  factory LoginRequest({
    @JsonKey(name:'id') String? id,
    @JsonKey(name:'token') String? token,
    @JsonKey(name:'email') String? email,
    @JsonKey(name:'avatar') String? avatar,
    @JsonKey(name:'name') String? name,
  })= _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}