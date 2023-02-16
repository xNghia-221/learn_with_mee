// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picture_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PictureModel _$PictureModelFromJson(Map<String, dynamic> json) {
  return _PictureModel.fromJson(json);
}

/// @nodoc
mixin _$PictureModel {
  @JsonKey(name: 'data')
  DataPictureFBModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PictureModelCopyWith<PictureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureModelCopyWith<$Res> {
  factory $PictureModelCopyWith(
          PictureModel value, $Res Function(PictureModel) then) =
      _$PictureModelCopyWithImpl<$Res, PictureModel>;
  @useResult
  $Res call({@JsonKey(name: 'data') DataPictureFBModel? data});

  $DataPictureFBModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$PictureModelCopyWithImpl<$Res, $Val extends PictureModel>
    implements $PictureModelCopyWith<$Res> {
  _$PictureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataPictureFBModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataPictureFBModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataPictureFBModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PictureModelCopyWith<$Res>
    implements $PictureModelCopyWith<$Res> {
  factory _$$_PictureModelCopyWith(
          _$_PictureModel value, $Res Function(_$_PictureModel) then) =
      __$$_PictureModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') DataPictureFBModel? data});

  @override
  $DataPictureFBModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_PictureModelCopyWithImpl<$Res>
    extends _$PictureModelCopyWithImpl<$Res, _$_PictureModel>
    implements _$$_PictureModelCopyWith<$Res> {
  __$$_PictureModelCopyWithImpl(
      _$_PictureModel _value, $Res Function(_$_PictureModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_PictureModel(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataPictureFBModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PictureModel implements _PictureModel {
  _$_PictureModel({@JsonKey(name: 'data') this.data});

  factory _$_PictureModel.fromJson(Map<String, dynamic> json) =>
      _$$_PictureModelFromJson(json);

  @override
  @JsonKey(name: 'data')
  final DataPictureFBModel? data;

  @override
  String toString() {
    return 'PictureModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PictureModel &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PictureModelCopyWith<_$_PictureModel> get copyWith =>
      __$$_PictureModelCopyWithImpl<_$_PictureModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PictureModelToJson(
      this,
    );
  }
}

abstract class _PictureModel implements PictureModel {
  factory _PictureModel(
          {@JsonKey(name: 'data') final DataPictureFBModel? data}) =
      _$_PictureModel;

  factory _PictureModel.fromJson(Map<String, dynamic> json) =
      _$_PictureModel.fromJson;

  @override
  @JsonKey(name: 'data')
  DataPictureFBModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$_PictureModelCopyWith<_$_PictureModel> get copyWith =>
      throw _privateConstructorUsedError;
}
