class LoginInfoModel {
  String? accessToken;
  String? tokenType;
  String? expiresAt;
  int? loginType;
  String? email;
  String? firebaseUid;

  LoginInfoModel(
      {required this.accessToken,
      required this.tokenType,
      required this.expiresAt});

  factory LoginInfoModel.fromMap(Map<String, dynamic> map) => LoginInfoModel(
        accessToken: map['access_token'] as String,
        tokenType: map['token_type'] as String,
        expiresAt: map['expires_at'] as String,
      );

  Map<String, dynamic> toMap() => {
        'accessToken': accessToken,
        'tokenType': tokenType,
        'expiresAt': expiresAt,
      };
}
