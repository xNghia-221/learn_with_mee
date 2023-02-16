import 'package:learn_with_mee/@core/data/repo/model/workHistory.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'userInfo.model.freezed.dart';
part 'userInfo.model.g.dart';

@freezed
class UserInfoModel with _$UserInfoModel {
  factory UserInfoModel({
    @JsonKey(name:'id') int? id,
    @JsonKey(name:'total_evaluates_like') int? totalEvaluatesLike,
    @JsonKey(name:'total_comment') int? totalComment,
    @JsonKey(name:'total_matching') int? totalMatching,
    @JsonKey(name:'total_like_matching') int? totalLikeMatching,
    @JsonKey(name:'email') String? email,
    @JsonKey(name:'area_name') String? areaName,
    @JsonKey(name:'self_introduction') String? selfIntroduction,
    @JsonKey(name:'work_history') WorkHistoryModel? workHistory,
    @JsonKey(name:'user_liked') List<String>? userLiked,
    @JsonKey(name:'name') String? name,
    @JsonKey(name:'birthday') String? birthday,
    @JsonKey(name:'business_card_img') String? businessCardImg,
    @JsonKey(name:'avatar') String? avatar,
  })= _UserInfoModel;

  factory UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoModelFromJson(json);
}
