// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_fb_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataFBModel _$DataFBModelFromJson(Map<String, dynamic> json) {
  return _DataFBModel.fromJson(json);
}

/// @nodoc
mixin _$DataFBModel {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'picture')
  PictureModel? get picture => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataFBModelCopyWith<DataFBModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataFBModelCopyWith<$Res> {
  factory $DataFBModelCopyWith(
          DataFBModel value, $Res Function(DataFBModel) then) =
      _$DataFBModelCopyWithImpl<$Res, DataFBModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'picture') PictureModel? picture,
      @JsonKey(name: 'id') String? id});

  $PictureModelCopyWith<$Res>? get picture;
}

/// @nodoc
class _$DataFBModelCopyWithImpl<$Res, $Val extends DataFBModel>
    implements $DataFBModelCopyWith<$Res> {
  _$DataFBModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? picture = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as PictureModel?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PictureModelCopyWith<$Res>? get picture {
    if (_value.picture == null) {
      return null;
    }

    return $PictureModelCopyWith<$Res>(_value.picture!, (value) {
      return _then(_value.copyWith(picture: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataFBModelCopyWith<$Res>
    implements $DataFBModelCopyWith<$Res> {
  factory _$$_DataFBModelCopyWith(
          _$_DataFBModel value, $Res Function(_$_DataFBModel) then) =
      __$$_DataFBModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'picture') PictureModel? picture,
      @JsonKey(name: 'id') String? id});

  @override
  $PictureModelCopyWith<$Res>? get picture;
}

/// @nodoc
class __$$_DataFBModelCopyWithImpl<$Res>
    extends _$DataFBModelCopyWithImpl<$Res, _$_DataFBModel>
    implements _$$_DataFBModelCopyWith<$Res> {
  __$$_DataFBModelCopyWithImpl(
      _$_DataFBModel _value, $Res Function(_$_DataFBModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? picture = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_DataFBModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as PictureModel?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataFBModel implements _DataFBModel {
  _$_DataFBModel(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'picture') this.picture,
      @JsonKey(name: 'id') this.id});

  factory _$_DataFBModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataFBModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'picture')
  final PictureModel? picture;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'DataFBModel(name: $name, email: $email, picture: $picture, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataFBModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, picture, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataFBModelCopyWith<_$_DataFBModel> get copyWith =>
      __$$_DataFBModelCopyWithImpl<_$_DataFBModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataFBModelToJson(
      this,
    );
  }
}

abstract class _DataFBModel implements DataFBModel {
  factory _DataFBModel(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'picture') final PictureModel? picture,
      @JsonKey(name: 'id') final String? id}) = _$_DataFBModel;

  factory _DataFBModel.fromJson(Map<String, dynamic> json) =
      _$_DataFBModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'picture')
  PictureModel? get picture;
  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_DataFBModelCopyWith<_$_DataFBModel> get copyWith =>
      throw _privateConstructorUsedError;
}
