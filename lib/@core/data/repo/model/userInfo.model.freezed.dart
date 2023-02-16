// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'userInfo.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) {
  return _UserInfoModel.fromJson(json);
}

/// @nodoc
mixin _$UserInfoModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_evaluates_like')
  int? get totalEvaluatesLike => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_comment')
  int? get totalComment => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_matching')
  int? get totalMatching => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_like_matching')
  int? get totalLikeMatching => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_name')
  String? get areaName => throw _privateConstructorUsedError;
  @JsonKey(name: 'self_introduction')
  String? get selfIntroduction => throw _privateConstructorUsedError;
  @JsonKey(name: 'work_history')
  WorkHistoryModel? get workHistory => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_liked')
  List<String>? get userLiked => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'birthday')
  String? get birthday => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_card_img')
  String? get businessCardImg => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoModelCopyWith<UserInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoModelCopyWith<$Res> {
  factory $UserInfoModelCopyWith(
          UserInfoModel value, $Res Function(UserInfoModel) then) =
      _$UserInfoModelCopyWithImpl<$Res, UserInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'total_evaluates_like') int? totalEvaluatesLike,
      @JsonKey(name: 'total_comment') int? totalComment,
      @JsonKey(name: 'total_matching') int? totalMatching,
      @JsonKey(name: 'total_like_matching') int? totalLikeMatching,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'area_name') String? areaName,
      @JsonKey(name: 'self_introduction') String? selfIntroduction,
      @JsonKey(name: 'work_history') WorkHistoryModel? workHistory,
      @JsonKey(name: 'user_liked') List<String>? userLiked,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'birthday') String? birthday,
      @JsonKey(name: 'business_card_img') String? businessCardImg,
      @JsonKey(name: 'avatar') String? avatar});

  $WorkHistoryModelCopyWith<$Res>? get workHistory;
}

/// @nodoc
class _$UserInfoModelCopyWithImpl<$Res, $Val extends UserInfoModel>
    implements $UserInfoModelCopyWith<$Res> {
  _$UserInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? totalEvaluatesLike = freezed,
    Object? totalComment = freezed,
    Object? totalMatching = freezed,
    Object? totalLikeMatching = freezed,
    Object? email = freezed,
    Object? areaName = freezed,
    Object? selfIntroduction = freezed,
    Object? workHistory = freezed,
    Object? userLiked = freezed,
    Object? name = freezed,
    Object? birthday = freezed,
    Object? businessCardImg = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      totalEvaluatesLike: freezed == totalEvaluatesLike
          ? _value.totalEvaluatesLike
          : totalEvaluatesLike // ignore: cast_nullable_to_non_nullable
              as int?,
      totalComment: freezed == totalComment
          ? _value.totalComment
          : totalComment // ignore: cast_nullable_to_non_nullable
              as int?,
      totalMatching: freezed == totalMatching
          ? _value.totalMatching
          : totalMatching // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLikeMatching: freezed == totalLikeMatching
          ? _value.totalLikeMatching
          : totalLikeMatching // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      areaName: freezed == areaName
          ? _value.areaName
          : areaName // ignore: cast_nullable_to_non_nullable
              as String?,
      selfIntroduction: freezed == selfIntroduction
          ? _value.selfIntroduction
          : selfIntroduction // ignore: cast_nullable_to_non_nullable
              as String?,
      workHistory: freezed == workHistory
          ? _value.workHistory
          : workHistory // ignore: cast_nullable_to_non_nullable
              as WorkHistoryModel?,
      userLiked: freezed == userLiked
          ? _value.userLiked
          : userLiked // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      businessCardImg: freezed == businessCardImg
          ? _value.businessCardImg
          : businessCardImg // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkHistoryModelCopyWith<$Res>? get workHistory {
    if (_value.workHistory == null) {
      return null;
    }

    return $WorkHistoryModelCopyWith<$Res>(_value.workHistory!, (value) {
      return _then(_value.copyWith(workHistory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserInfoModelCopyWith<$Res>
    implements $UserInfoModelCopyWith<$Res> {
  factory _$$_UserInfoModelCopyWith(
          _$_UserInfoModel value, $Res Function(_$_UserInfoModel) then) =
      __$$_UserInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'total_evaluates_like') int? totalEvaluatesLike,
      @JsonKey(name: 'total_comment') int? totalComment,
      @JsonKey(name: 'total_matching') int? totalMatching,
      @JsonKey(name: 'total_like_matching') int? totalLikeMatching,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'area_name') String? areaName,
      @JsonKey(name: 'self_introduction') String? selfIntroduction,
      @JsonKey(name: 'work_history') WorkHistoryModel? workHistory,
      @JsonKey(name: 'user_liked') List<String>? userLiked,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'birthday') String? birthday,
      @JsonKey(name: 'business_card_img') String? businessCardImg,
      @JsonKey(name: 'avatar') String? avatar});

  @override
  $WorkHistoryModelCopyWith<$Res>? get workHistory;
}

/// @nodoc
class __$$_UserInfoModelCopyWithImpl<$Res>
    extends _$UserInfoModelCopyWithImpl<$Res, _$_UserInfoModel>
    implements _$$_UserInfoModelCopyWith<$Res> {
  __$$_UserInfoModelCopyWithImpl(
      _$_UserInfoModel _value, $Res Function(_$_UserInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? totalEvaluatesLike = freezed,
    Object? totalComment = freezed,
    Object? totalMatching = freezed,
    Object? totalLikeMatching = freezed,
    Object? email = freezed,
    Object? areaName = freezed,
    Object? selfIntroduction = freezed,
    Object? workHistory = freezed,
    Object? userLiked = freezed,
    Object? name = freezed,
    Object? birthday = freezed,
    Object? businessCardImg = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$_UserInfoModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      totalEvaluatesLike: freezed == totalEvaluatesLike
          ? _value.totalEvaluatesLike
          : totalEvaluatesLike // ignore: cast_nullable_to_non_nullable
              as int?,
      totalComment: freezed == totalComment
          ? _value.totalComment
          : totalComment // ignore: cast_nullable_to_non_nullable
              as int?,
      totalMatching: freezed == totalMatching
          ? _value.totalMatching
          : totalMatching // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLikeMatching: freezed == totalLikeMatching
          ? _value.totalLikeMatching
          : totalLikeMatching // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      areaName: freezed == areaName
          ? _value.areaName
          : areaName // ignore: cast_nullable_to_non_nullable
              as String?,
      selfIntroduction: freezed == selfIntroduction
          ? _value.selfIntroduction
          : selfIntroduction // ignore: cast_nullable_to_non_nullable
              as String?,
      workHistory: freezed == workHistory
          ? _value.workHistory
          : workHistory // ignore: cast_nullable_to_non_nullable
              as WorkHistoryModel?,
      userLiked: freezed == userLiked
          ? _value._userLiked
          : userLiked // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      businessCardImg: freezed == businessCardImg
          ? _value.businessCardImg
          : businessCardImg // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInfoModel implements _UserInfoModel {
  _$_UserInfoModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'total_evaluates_like') this.totalEvaluatesLike,
      @JsonKey(name: 'total_comment') this.totalComment,
      @JsonKey(name: 'total_matching') this.totalMatching,
      @JsonKey(name: 'total_like_matching') this.totalLikeMatching,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'area_name') this.areaName,
      @JsonKey(name: 'self_introduction') this.selfIntroduction,
      @JsonKey(name: 'work_history') this.workHistory,
      @JsonKey(name: 'user_liked') final List<String>? userLiked,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'birthday') this.birthday,
      @JsonKey(name: 'business_card_img') this.businessCardImg,
      @JsonKey(name: 'avatar') this.avatar})
      : _userLiked = userLiked;

  factory _$_UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserInfoModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'total_evaluates_like')
  final int? totalEvaluatesLike;
  @override
  @JsonKey(name: 'total_comment')
  final int? totalComment;
  @override
  @JsonKey(name: 'total_matching')
  final int? totalMatching;
  @override
  @JsonKey(name: 'total_like_matching')
  final int? totalLikeMatching;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'area_name')
  final String? areaName;
  @override
  @JsonKey(name: 'self_introduction')
  final String? selfIntroduction;
  @override
  @JsonKey(name: 'work_history')
  final WorkHistoryModel? workHistory;
  final List<String>? _userLiked;
  @override
  @JsonKey(name: 'user_liked')
  List<String>? get userLiked {
    final value = _userLiked;
    if (value == null) return null;
    if (_userLiked is EqualUnmodifiableListView) return _userLiked;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'birthday')
  final String? birthday;
  @override
  @JsonKey(name: 'business_card_img')
  final String? businessCardImg;
  @override
  @JsonKey(name: 'avatar')
  final String? avatar;

  @override
  String toString() {
    return 'UserInfoModel(id: $id, totalEvaluatesLike: $totalEvaluatesLike, totalComment: $totalComment, totalMatching: $totalMatching, totalLikeMatching: $totalLikeMatching, email: $email, areaName: $areaName, selfIntroduction: $selfIntroduction, workHistory: $workHistory, userLiked: $userLiked, name: $name, birthday: $birthday, businessCardImg: $businessCardImg, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInfoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.totalEvaluatesLike, totalEvaluatesLike) ||
                other.totalEvaluatesLike == totalEvaluatesLike) &&
            (identical(other.totalComment, totalComment) ||
                other.totalComment == totalComment) &&
            (identical(other.totalMatching, totalMatching) ||
                other.totalMatching == totalMatching) &&
            (identical(other.totalLikeMatching, totalLikeMatching) ||
                other.totalLikeMatching == totalLikeMatching) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.areaName, areaName) ||
                other.areaName == areaName) &&
            (identical(other.selfIntroduction, selfIntroduction) ||
                other.selfIntroduction == selfIntroduction) &&
            (identical(other.workHistory, workHistory) ||
                other.workHistory == workHistory) &&
            const DeepCollectionEquality()
                .equals(other._userLiked, _userLiked) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.businessCardImg, businessCardImg) ||
                other.businessCardImg == businessCardImg) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      totalEvaluatesLike,
      totalComment,
      totalMatching,
      totalLikeMatching,
      email,
      areaName,
      selfIntroduction,
      workHistory,
      const DeepCollectionEquality().hash(_userLiked),
      name,
      birthday,
      businessCardImg,
      avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserInfoModelCopyWith<_$_UserInfoModel> get copyWith =>
      __$$_UserInfoModelCopyWithImpl<_$_UserInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInfoModelToJson(
      this,
    );
  }
}

abstract class _UserInfoModel implements UserInfoModel {
  factory _UserInfoModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'total_evaluates_like') final int? totalEvaluatesLike,
      @JsonKey(name: 'total_comment') final int? totalComment,
      @JsonKey(name: 'total_matching') final int? totalMatching,
      @JsonKey(name: 'total_like_matching') final int? totalLikeMatching,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'area_name') final String? areaName,
      @JsonKey(name: 'self_introduction') final String? selfIntroduction,
      @JsonKey(name: 'work_history') final WorkHistoryModel? workHistory,
      @JsonKey(name: 'user_liked') final List<String>? userLiked,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'birthday') final String? birthday,
      @JsonKey(name: 'business_card_img') final String? businessCardImg,
      @JsonKey(name: 'avatar') final String? avatar}) = _$_UserInfoModel;

  factory _UserInfoModel.fromJson(Map<String, dynamic> json) =
      _$_UserInfoModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'total_evaluates_like')
  int? get totalEvaluatesLike;
  @override
  @JsonKey(name: 'total_comment')
  int? get totalComment;
  @override
  @JsonKey(name: 'total_matching')
  int? get totalMatching;
  @override
  @JsonKey(name: 'total_like_matching')
  int? get totalLikeMatching;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'area_name')
  String? get areaName;
  @override
  @JsonKey(name: 'self_introduction')
  String? get selfIntroduction;
  @override
  @JsonKey(name: 'work_history')
  WorkHistoryModel? get workHistory;
  @override
  @JsonKey(name: 'user_liked')
  List<String>? get userLiked;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'birthday')
  String? get birthday;
  @override
  @JsonKey(name: 'business_card_img')
  String? get businessCardImg;
  @override
  @JsonKey(name: 'avatar')
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_UserInfoModelCopyWith<_$_UserInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
