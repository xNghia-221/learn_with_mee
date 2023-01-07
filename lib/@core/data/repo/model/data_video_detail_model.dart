import 'package:learn_with_mee/@core/data/repo/model/teacher_model.dart';

class DataVideoDetail {
  String? id;
  String? teacherId;
  String? url;
  String? poster;
  String? title;
  String? description;
  String? hashtag;
  int? numberOfComments;
  int? numberOfLikes;
  String? status;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  Teacher? teacher;

  DataVideoDetail(
      {this.id,
      this.teacherId,
      this.url,
      this.poster,
      this.title,
      this.description,
      this.hashtag,
      this.numberOfComments,
      this.numberOfLikes,
      this.status,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.teacher});

  DataVideoDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    teacherId = json['teacher_id'];
    url = json['url'];
    poster = json['poster'];
    title = json['title'];
    description = json['description'];
    hashtag = json['hashtag'];
    numberOfComments = json['number_of_comments'];
    numberOfLikes = json['number_of_likes'];
    status = json['status'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    teacher =
        json['teacher'] != null ? Teacher.fromJson(json['teacher']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['teacher_id'] = teacherId;
    data['url'] = url;
    data['poster'] = poster;
    data['title'] = title;
    data['description'] = description;
    data['hashtag'] = hashtag;
    data['number_of_comments'] = numberOfComments;
    data['number_of_likes'] = numberOfLikes;
    data['status'] = status;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (teacher != null) {
      data['teacher'] = teacher!.toJson();
    }
    return data;
  }
}
