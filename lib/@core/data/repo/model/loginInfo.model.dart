import 'package:freezed_annotation/freezed_annotation.dart';
part 'loginInfo.model.freezed.dart';
part 'loginInfo.model.g.dart';

@freezed
class LoginInfoModel with _$LoginInfoModel {
  factory LoginInfoModel({
    @JsonKey(name:'access_token') String? accessToken,
    @JsonKey(name:'token_type') String? tokenType,
    @JsonKey(name:'expires_at') String? expiresAt,
    int? loginType,
    String? email,
    String? firebaseUid,
  })= _LoginInfoModel;

  factory LoginInfoModel.fromJson(Map<String, dynamic> json) =>
      _$LoginInfoModelFromJson(json);
}
