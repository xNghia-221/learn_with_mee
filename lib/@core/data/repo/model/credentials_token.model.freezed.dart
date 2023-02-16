// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credentials_token.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CredentialsToken _$CredentialsTokenFromJson(Map<String, dynamic> json) {
  return _CredentialsToken.fromJson(json);
}

/// @nodoc
mixin _$CredentialsToken {
  @JsonKey(name: 'token_type')
  String? get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_in')
  int? get expiresIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CredentialsTokenCopyWith<CredentialsToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialsTokenCopyWith<$Res> {
  factory $CredentialsTokenCopyWith(
          CredentialsToken value, $Res Function(CredentialsToken) then) =
      _$CredentialsTokenCopyWithImpl<$Res, CredentialsToken>;
  @useResult
  $Res call(
      {@JsonKey(name: 'token_type') String? tokenType,
      @JsonKey(name: 'expires_in') int? expiresIn,
      @JsonKey(name: 'access_token') String? accessToken});
}

/// @nodoc
class _$CredentialsTokenCopyWithImpl<$Res, $Val extends CredentialsToken>
    implements $CredentialsTokenCopyWith<$Res> {
  _$CredentialsTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenType = freezed,
    Object? expiresIn = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_value.copyWith(
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CredentialsTokenCopyWith<$Res>
    implements $CredentialsTokenCopyWith<$Res> {
  factory _$$_CredentialsTokenCopyWith(
          _$_CredentialsToken value, $Res Function(_$_CredentialsToken) then) =
      __$$_CredentialsTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'token_type') String? tokenType,
      @JsonKey(name: 'expires_in') int? expiresIn,
      @JsonKey(name: 'access_token') String? accessToken});
}

/// @nodoc
class __$$_CredentialsTokenCopyWithImpl<$Res>
    extends _$CredentialsTokenCopyWithImpl<$Res, _$_CredentialsToken>
    implements _$$_CredentialsTokenCopyWith<$Res> {
  __$$_CredentialsTokenCopyWithImpl(
      _$_CredentialsToken _value, $Res Function(_$_CredentialsToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenType = freezed,
    Object? expiresIn = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_$_CredentialsToken(
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CredentialsToken implements _CredentialsToken {
  _$_CredentialsToken(
      {@JsonKey(name: 'token_type') this.tokenType,
      @JsonKey(name: 'expires_in') this.expiresIn,
      @JsonKey(name: 'access_token') this.accessToken});

  factory _$_CredentialsToken.fromJson(Map<String, dynamic> json) =>
      _$$_CredentialsTokenFromJson(json);

  @override
  @JsonKey(name: 'token_type')
  final String? tokenType;
  @override
  @JsonKey(name: 'expires_in')
  final int? expiresIn;
  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;

  @override
  String toString() {
    return 'CredentialsToken(tokenType: $tokenType, expiresIn: $expiresIn, accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CredentialsToken &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tokenType, expiresIn, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CredentialsTokenCopyWith<_$_CredentialsToken> get copyWith =>
      __$$_CredentialsTokenCopyWithImpl<_$_CredentialsToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CredentialsTokenToJson(
      this,
    );
  }
}

abstract class _CredentialsToken implements CredentialsToken {
  factory _CredentialsToken(
          {@JsonKey(name: 'token_type') final String? tokenType,
          @JsonKey(name: 'expires_in') final int? expiresIn,
          @JsonKey(name: 'access_token') final String? accessToken}) =
      _$_CredentialsToken;

  factory _CredentialsToken.fromJson(Map<String, dynamic> json) =
      _$_CredentialsToken.fromJson;

  @override
  @JsonKey(name: 'token_type')
  String? get tokenType;
  @override
  @JsonKey(name: 'expires_in')
  int? get expiresIn;
  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$_CredentialsTokenCopyWith<_$_CredentialsToken> get copyWith =>
      throw _privateConstructorUsedError;
}
