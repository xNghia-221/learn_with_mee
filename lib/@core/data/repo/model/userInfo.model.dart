import 'package:learn_with_mee/@core/data/repo/model/workHistory.model.dart';

class UserInfoModel {
  int? id;
  int? totalEvaluatesLike;
  int? totalComment;
  int? totalMatching;
  int? totalLikeMatching;
  String? email;
  String? areaName;
  String? selfIntroduction;
  WorkHistoryModel? workHistory;
  List<String>? userLiked;
  String? name;
  String? birthday;
  String? businessCardImg;
  String? avatar;

  UserInfoModel(
      {this.id,
      this.totalEvaluatesLike,
      this.totalComment,
      this.totalMatching,
      this.totalLikeMatching,
      this.email,
      this.areaName,
      this.selfIntroduction,
      this.workHistory,
      this.userLiked,
      this.name,
      this.birthday,
      this.businessCardImg,
      this.avatar});

  factory UserInfoModel.fromMap(Map<String, dynamic> map) => UserInfoModel(
        id: map['id'] as int,
        totalEvaluatesLike: map['total_evaluates_like'] as int,
        totalComment: map['total_comment'] as int,
        totalMatching: map['total_matching'] as int,
        totalLikeMatching: map['total_like_matching'] as int,
        email: map['email'] as String,
        areaName: map['area_name'] as String,
        selfIntroduction: map['self_introduction'] as String,
        workHistory: WorkHistoryModel.fromMap(map['work_history']),
        userLiked: List.from(map['user_liked']),
        name: map['name'] as String,
        birthday: map['birthday'] as String,
        businessCardImg: map['business_card_img'] as String,
        avatar: map['avatar'] as String,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'total_evaluates_like': totalEvaluatesLike,
        'total_comment': totalComment,
        'total_matching': totalMatching,
        'total_like_matching': totalLikeMatching,
        'email': email,
        'area_name': areaName,
        'self_introduction': selfIntroduction,
        'work_history': workHistory,
        'user_liked': userLiked,
        'name': name,
        'birthday': birthday,
        'business_card_img': businessCardImg,
        'avatar': avatar,
      };
}
