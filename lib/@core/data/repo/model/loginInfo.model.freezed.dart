// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loginInfo.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginInfoModel _$LoginInfoModelFromJson(Map<String, dynamic> json) {
  return _LoginInfoModel.fromJson(json);
}

/// @nodoc
mixin _$LoginInfoModel {
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String? get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_at')
  String? get expiresAt => throw _privateConstructorUsedError;
  int? get loginType => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get firebaseUid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginInfoModelCopyWith<LoginInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginInfoModelCopyWith<$Res> {
  factory $LoginInfoModelCopyWith(
          LoginInfoModel value, $Res Function(LoginInfoModel) then) =
      _$LoginInfoModelCopyWithImpl<$Res, LoginInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'token_type') String? tokenType,
      @JsonKey(name: 'expires_at') String? expiresAt,
      int? loginType,
      String? email,
      String? firebaseUid});
}

/// @nodoc
class _$LoginInfoModelCopyWithImpl<$Res, $Val extends LoginInfoModel>
    implements $LoginInfoModelCopyWith<$Res> {
  _$LoginInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? expiresAt = freezed,
    Object? loginType = freezed,
    Object? email = freezed,
    Object? firebaseUid = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      loginType: freezed == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firebaseUid: freezed == firebaseUid
          ? _value.firebaseUid
          : firebaseUid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginInfoModelCopyWith<$Res>
    implements $LoginInfoModelCopyWith<$Res> {
  factory _$$_LoginInfoModelCopyWith(
          _$_LoginInfoModel value, $Res Function(_$_LoginInfoModel) then) =
      __$$_LoginInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'token_type') String? tokenType,
      @JsonKey(name: 'expires_at') String? expiresAt,
      int? loginType,
      String? email,
      String? firebaseUid});
}

/// @nodoc
class __$$_LoginInfoModelCopyWithImpl<$Res>
    extends _$LoginInfoModelCopyWithImpl<$Res, _$_LoginInfoModel>
    implements _$$_LoginInfoModelCopyWith<$Res> {
  __$$_LoginInfoModelCopyWithImpl(
      _$_LoginInfoModel _value, $Res Function(_$_LoginInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? expiresAt = freezed,
    Object? loginType = freezed,
    Object? email = freezed,
    Object? firebaseUid = freezed,
  }) {
    return _then(_$_LoginInfoModel(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      loginType: freezed == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firebaseUid: freezed == firebaseUid
          ? _value.firebaseUid
          : firebaseUid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginInfoModel implements _LoginInfoModel {
  _$_LoginInfoModel(
      {@JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'token_type') this.tokenType,
      @JsonKey(name: 'expires_at') this.expiresAt,
      this.loginType,
      this.email,
      this.firebaseUid});

  factory _$_LoginInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginInfoModelFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  @JsonKey(name: 'token_type')
  final String? tokenType;
  @override
  @JsonKey(name: 'expires_at')
  final String? expiresAt;
  @override
  final int? loginType;
  @override
  final String? email;
  @override
  final String? firebaseUid;

  @override
  String toString() {
    return 'LoginInfoModel(accessToken: $accessToken, tokenType: $tokenType, expiresAt: $expiresAt, loginType: $loginType, email: $email, firebaseUid: $firebaseUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginInfoModel &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.loginType, loginType) ||
                other.loginType == loginType) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firebaseUid, firebaseUid) ||
                other.firebaseUid == firebaseUid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, tokenType,
      expiresAt, loginType, email, firebaseUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginInfoModelCopyWith<_$_LoginInfoModel> get copyWith =>
      __$$_LoginInfoModelCopyWithImpl<_$_LoginInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginInfoModelToJson(
      this,
    );
  }
}

abstract class _LoginInfoModel implements LoginInfoModel {
  factory _LoginInfoModel(
      {@JsonKey(name: 'access_token') final String? accessToken,
      @JsonKey(name: 'token_type') final String? tokenType,
      @JsonKey(name: 'expires_at') final String? expiresAt,
      final int? loginType,
      final String? email,
      final String? firebaseUid}) = _$_LoginInfoModel;

  factory _LoginInfoModel.fromJson(Map<String, dynamic> json) =
      _$_LoginInfoModel.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  @JsonKey(name: 'token_type')
  String? get tokenType;
  @override
  @JsonKey(name: 'expires_at')
  String? get expiresAt;
  @override
  int? get loginType;
  @override
  String? get email;
  @override
  String? get firebaseUid;
  @override
  @JsonKey(ignore: true)
  _$$_LoginInfoModelCopyWith<_$_LoginInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
