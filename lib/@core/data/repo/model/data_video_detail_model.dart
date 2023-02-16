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
  String? urlVideoPlay;
  String? urlThumbnail;

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
      this.urlThumbnail,
      this.teacher});

  DataVideoDetail.fromJson(Map<String, dynamic> json, String? baseUrlVideo) {
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
    teacher = json['teacher'] != null
        ? Teacher.fromJson(json['teacher'], baseUrlVideo)
        : null;
    urlVideoPlay = "$baseUrlVideo$url";
    urlThumbnail =
        poster?.contains("http") == true ? poster : "$baseUrlVideo$poster";
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

/*import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_video_detail_model.freezed.dart';

part 'data_video_detail_model.g.dart';

@freezed
class DataVideoDetail with _$DataVideoDetail {
  factory DataVideoDetail({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'teacher_id') String? teacherId,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'poster') String? poster,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'hashtag') String? hashtag,
    @JsonKey(name: 'number_of_comments') int? numberOfComments,
    @JsonKey(name: 'number_of_likes') int? numberOfLikes,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'teacher') Teacher? teacher,
  }) = _DataVideoDetail;

  factory DataVideoDetail.fromJson(Map<String, dynamic> json) =>
      _$DataVideoDetailFromJson(json);
}*/
