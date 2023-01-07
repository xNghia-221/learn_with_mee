class Teacher {
  String? id;
  String? name;
  String? email;
  String? dob;
  String? gender;
  String? avatar;
  String? status;
  Null? degree;

  Teacher(
      {this.id,
      this.name,
      this.email,
      this.dob,
      this.gender,
      this.avatar,
      this.status,
      this.degree});

  Teacher.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    dob = json['dob'];
    gender = json['gender'];
    avatar = json['avatar'];
    status = json['status'];
    degree = json['degree'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['dob'] = this.dob;
    data['gender'] = this.gender;
    data['avatar'] = this.avatar;
    data['status'] = this.status;
    data['degree'] = this.degree;
    return data;
  }
}
