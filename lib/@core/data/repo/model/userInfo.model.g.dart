// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userInfo.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfoModel _$$_UserInfoModelFromJson(Map<String, dynamic> json) =>
    _$_UserInfoModel(
      id: json['id'] as int?,
      totalEvaluatesLike: json['total_evaluates_like'] as int?,
      totalComment: json['total_comment'] as int?,
      totalMatching: json['total_matching'] as int?,
      totalLikeMatching: json['total_like_matching'] as int?,
      email: json['email'] as String?,
      areaName: json['area_name'] as String?,
      selfIntroduction: json['self_introduction'] as String?,
      workHistory: json['work_history'] == null
          ? null
          : WorkHistoryModel.fromJson(
              json['work_history'] as Map<String, dynamic>),
      userLiked: (json['user_liked'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      name: json['name'] as String?,
      birthday: json['birthday'] as String?,
      businessCardImg: json['business_card_img'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_UserInfoModelToJson(_$_UserInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total_evaluates_like': instance.totalEvaluatesLike,
      'total_comment': instance.totalComment,
      'total_matching': instance.totalMatching,
      'total_like_matching': instance.totalLikeMatching,
      'email': instance.email,
      'area_name': instance.areaName,
      'self_introduction': instance.selfIntroduction,
      'work_history': instance.workHistory,
      'user_liked': instance.userLiked,
      'name': instance.name,
      'birthday': instance.birthday,
      'business_card_img': instance.businessCardImg,
      'avatar': instance.avatar,
    };
