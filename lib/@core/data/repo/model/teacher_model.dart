class Teacher {
  String? id;
  String? name;
  String? email;
  String? dob;
  String? gender;
  String? avatar;
  String? status;
  String? degree;

  Teacher(
      {this.id,
      this.name,
      this.email,
      this.dob,
      this.gender,
      this.avatar,
      this.status,
      this.degree});

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
    return data;
  }
}

/*import 'package:freezed_annotation/freezed_annotation.dart';
part 'teacher_model.freezed.dart';
part 'teacher_model.g.dart';

@freezed
class Teacher with _$Teacher {
  factory Teacher({
    @JsonKey(name:'id') String? id,
    @JsonKey(name:'name') String? name,
    @JsonKey(name:'email') String? email,
    @JsonKey(name:'dob') String? dob,
    @JsonKey(name:'gender') String? gender,
    @JsonKey(name:'avatar') String? avatar,
    @JsonKey(name:'status') String? status,
    @JsonKey(name:'degree') String? degree,
  })= _Teacher;

  factory Teacher.fromJson(Map<String, dynamic> json) =>
      _$TeacherFromJson(json);
}*/
