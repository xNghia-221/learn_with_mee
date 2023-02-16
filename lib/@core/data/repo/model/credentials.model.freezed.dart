// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credentials.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Credentials _$CredentialsFromJson(Map<String, dynamic> json) {
  return _Credentials.fromJson(json);
}

/// @nodoc
mixin _$Credentials {
  @JsonKey(name: 'grant_type')
  String? get grantType => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_id')
  String? get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_secret')
  String? get clientSecret => throw _privateConstructorUsedError;
  @JsonKey(name: 'scope')
  String? get scope => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CredentialsCopyWith<Credentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialsCopyWith<$Res> {
  factory $CredentialsCopyWith(
          Credentials value, $Res Function(Credentials) then) =
      _$CredentialsCopyWithImpl<$Res, Credentials>;
  @useResult
  $Res call(
      {@JsonKey(name: 'grant_type') String? grantType,
      @JsonKey(name: 'client_id') String? clientId,
      @JsonKey(name: 'client_secret') String? clientSecret,
      @JsonKey(name: 'scope') String? scope});
}

/// @nodoc
class _$CredentialsCopyWithImpl<$Res, $Val extends Credentials>
    implements $CredentialsCopyWith<$Res> {
  _$CredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grantType = freezed,
    Object? clientId = freezed,
    Object? clientSecret = freezed,
    Object? scope = freezed,
  }) {
    return _then(_value.copyWith(
      grantType: freezed == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientSecret: freezed == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CredentialsCopyWith<$Res>
    implements $CredentialsCopyWith<$Res> {
  factory _$$_CredentialsCopyWith(
          _$_Credentials value, $Res Function(_$_Credentials) then) =
      __$$_CredentialsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'grant_type') String? grantType,
      @JsonKey(name: 'client_id') String? clientId,
      @JsonKey(name: 'client_secret') String? clientSecret,
      @JsonKey(name: 'scope') String? scope});
}

/// @nodoc
class __$$_CredentialsCopyWithImpl<$Res>
    extends _$CredentialsCopyWithImpl<$Res, _$_Credentials>
    implements _$$_CredentialsCopyWith<$Res> {
  __$$_CredentialsCopyWithImpl(
      _$_Credentials _value, $Res Function(_$_Credentials) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grantType = freezed,
    Object? clientId = freezed,
    Object? clientSecret = freezed,
    Object? scope = freezed,
  }) {
    return _then(_$_Credentials(
      grantType: freezed == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientSecret: freezed == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Credentials implements _Credentials {
  _$_Credentials(
      {@JsonKey(name: 'grant_type') this.grantType,
      @JsonKey(name: 'client_id') this.clientId,
      @JsonKey(name: 'client_secret') this.clientSecret,
      @JsonKey(name: 'scope') this.scope});

  factory _$_Credentials.fromJson(Map<String, dynamic> json) =>
      _$$_CredentialsFromJson(json);

  @override
  @JsonKey(name: 'grant_type')
  final String? grantType;
  @override
  @JsonKey(name: 'client_id')
  final String? clientId;
  @override
  @JsonKey(name: 'client_secret')
  final String? clientSecret;
  @override
  @JsonKey(name: 'scope')
  final String? scope;

  @override
  String toString() {
    return 'Credentials(grantType: $grantType, clientId: $clientId, clientSecret: $clientSecret, scope: $scope)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Credentials &&
            (identical(other.grantType, grantType) ||
                other.grantType == grantType) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret) &&
            (identical(other.scope, scope) || other.scope == scope));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, grantType, clientId, clientSecret, scope);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CredentialsCopyWith<_$_Credentials> get copyWith =>
      __$$_CredentialsCopyWithImpl<_$_Credentials>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CredentialsToJson(
      this,
    );
  }
}

abstract class _Credentials implements Credentials {
  factory _Credentials(
      {@JsonKey(name: 'grant_type') final String? grantType,
      @JsonKey(name: 'client_id') final String? clientId,
      @JsonKey(name: 'client_secret') final String? clientSecret,
      @JsonKey(name: 'scope') final String? scope}) = _$_Credentials;

  factory _Credentials.fromJson(Map<String, dynamic> json) =
      _$_Credentials.fromJson;

  @override
  @JsonKey(name: 'grant_type')
  String? get grantType;
  @override
  @JsonKey(name: 'client_id')
  String? get clientId;
  @override
  @JsonKey(name: 'client_secret')
  String? get clientSecret;
  @override
  @JsonKey(name: 'scope')
  String? get scope;
  @override
  @JsonKey(ignore: true)
  _$$_CredentialsCopyWith<_$_Credentials> get copyWith =>
      throw _privateConstructorUsedError;
}
