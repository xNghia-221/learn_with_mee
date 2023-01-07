class User {
  String? id;
  String? name;
  String? email;
  dynamic emailVerifiedAt;
  String? dob;
  String? gender;
  String? role;
  String? avatar;
  String? status;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;
  String? degree;
  String? placeOfWork;
  String? introduction;
  int? numberOfFollowers;

  User(
      {this.id,
      this.name,
      this.email,
      this.emailVerifiedAt,
      this.dob,
      this.gender,
      this.role,
      this.avatar,
      this.status,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.degree,
      this.placeOfWork,
      this.introduction,
      this.numberOfFollowers});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    dob = json['dob'];
    gender = json['gender'];
    role = json['role'];
    avatar = json['avatar'];
    status = json['status'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    degree = json['degree'];
    placeOfWork = json['place_of_work'];
    introduction = json['introduction'];
    numberOfFollowers = json['number_of_followers'];
  }

  User mapLink(String? url) {
    if (url != null) avatar = "$url$avatar";
    return this;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['email_verified_at'] = emailVerifiedAt;
    data['dob'] = dob;
    data['gender'] = gender;
    data['role'] = role;
    data['avatar'] = avatar;
    data['status'] = status;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['degree'] = degree;
    data['place_of_work'] = placeOfWork;
    data['introduction'] = introduction;
    data['number_of_followers'] = numberOfFollowers;
    return data;
  }
}
