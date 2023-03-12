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
  int? isLiked;

  DataVideoDetail({this.id,
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
    this.urlVideoPlay,
    this.urlThumbnail,
    this.teacher,
    this.isLiked

  });

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
    isLiked = json['is_liked'];
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
    data['is_liked'] = isLiked;
    if (teacher != null) {
      data['teacher'] = teacher!.toJson();
    }
    return data;
  }

  DataVideoDetail copyWith({String? id,
    String? teacherId,
    String? url,
    String? poster,
    String? title,
    String? description,
    String? hashtag,
    int? numberOfComments,
    int? numberOfLikes,
    String? status,
    String? deletedAt,
    String? createdAt,
    String? updatedAt,
    Teacher? teacher,
    String? urlThumbnail,
    int? isLiked,}) {
    return DataVideoDetail(
      id: id ?? this.id,
      url: url ?? this.url,
      teacherId: teacherId ?? this.teacherId,
      poster: poster ?? this.poster,
      title: title ?? this.title,
      description: description ?? this.description,
      hashtag: hashtag ?? this.hashtag,
      numberOfLikes: numberOfLikes ?? this.numberOfLikes,
      numberOfComments: numberOfComments ?? this.numberOfComments,
      status: status ?? this.status,
      deletedAt: deletedAt ?? this.deletedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      teacher: teacher ?? this.teacher,
      urlThumbnail: urlThumbnail ?? this.urlThumbnail,
      isLiked: isLiked ?? this.isLiked,
    );
  }
}
