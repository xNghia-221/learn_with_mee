class Teacher {
  String? id;
  String? name;
  String? email;
  String? dob;
  String? gender;
  String? avatar;
  String? status;
  String? degree;
  int? isFollowed;

  Teacher(
      {this.id,
      this.name,
      this.email,
      this.dob,
      this.gender,
      this.avatar,
      this.status,
      this.degree,
      this.isFollowed});

  Teacher.fromJson(Map<String, dynamic> json, String? baseUrlVideo) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    dob = json['dob'];
    gender = json['gender'];
    avatar = json['avatar'];
    avatar = "$baseUrlVideo$avatar";
    status = json['status'];
    degree = json['degree'];
    isFollowed = json['is_followed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['dob'] = dob;
    data['gender'] = gender;
    data['avatar'] = avatar;
    data['status'] = status;
    data['degree'] = degree;
    data['is_followed'] = isFollowed;
    return data;
  }
}
