class Credentials {
  String? grantType;
  String? clientId;
  String? clientSecret;
  String? scope;

  Credentials({this.grantType, this.clientId, this.clientSecret, this.scope});

  Credentials.fromJson(Map<String, dynamic> json) {
    grantType = json['grant_type'];
    clientId = json['client_id'];
    clientSecret = json['client_secret'];
    scope = json['scope'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['grant_type'] = grantType;
    data['client_id'] = clientId;
    data['client_secret'] = clientSecret;
    data['scope'] = scope;
    return data;
  }
}
