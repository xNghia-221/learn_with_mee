class LoginResponse {
  bool? status;
  String? token;
  String? socialId;
  int? expiresAt;

  LoginResponse({this.status, this.token, this.socialId, this.expiresAt});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    token = json['token'];
    socialId = json['social_id'];
    expiresAt = json['expires_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['token'] = token;
    data['social_id'] = socialId;
    data['expires_at'] = expiresAt;
    return data;
  }
}
