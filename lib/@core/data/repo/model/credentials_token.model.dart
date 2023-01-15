class CredentialsToken {
  String? tokenType;
  int? expiresIn;
  String? accessToken;

  CredentialsToken({this.tokenType, this.expiresIn, this.accessToken});

  CredentialsToken.fromJson(Map<String, dynamic> json) {
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token_type'] = tokenType;
    data['expires_in'] = expiresIn;
    data['access_token'] = accessToken;
    return data;
  }
}
