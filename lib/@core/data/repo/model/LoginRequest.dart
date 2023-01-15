class LoginRequest {
  String? id;
  String? token;
  String? email;
  String? avatar;
  String? name;

  LoginRequest({this.id, this.token, this.email, this.avatar, this.name});

  LoginRequest.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    token = json['token'];
    email = json['email'];
    avatar = json['avatar'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['token'] = token;
    data['email'] = email;
    data['avatar'] = avatar;
    data['name'] = name;
    return data;
  }
}
