// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_picture_fb_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataPictureFBModel _$DataPictureFBModelFromJson(Map<String, dynamic> json) {
  return _DataPictureFBModel.fromJson(json);
}

/// @nodoc
mixin _$DataPictureFBModel {
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_silhouette')
  bool? get issilhouette => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataPictureFBModelCopyWith<DataPictureFBModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataPictureFBModelCopyWith<$Res> {
  factory $DataPictureFBModelCopyWith(
          DataPictureFBModel value, $Res Function(DataPictureFBModel) then) =
      _$DataPictureFBModelCopyWithImpl<$Res, DataPictureFBModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'height') int? height,
      @JsonKey(name: 'is_silhouette') bool? issilhouette,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'width') int? width});
}

/// @nodoc
class _$DataPictureFBModelCopyWithImpl<$Res, $Val extends DataPictureFBModel>
    implements $DataPictureFBModelCopyWith<$Res> {
  _$DataPictureFBModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? issilhouette = freezed,
    Object? url = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      issilhouette: freezed == issilhouette
          ? _value.issilhouette
          : issilhouette // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataPictureFBModelCopyWith<$Res>
    implements $DataPictureFBModelCopyWith<$Res> {
  factory _$$_DataPictureFBModelCopyWith(_$_DataPictureFBModel value,
          $Res Function(_$_DataPictureFBModel) then) =
      __$$_DataPictureFBModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'height') int? height,
      @JsonKey(name: 'is_silhouette') bool? issilhouette,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'width') int? width});
}

/// @nodoc
class __$$_DataPictureFBModelCopyWithImpl<$Res>
    extends _$DataPictureFBModelCopyWithImpl<$Res, _$_DataPictureFBModel>
    implements _$$_DataPictureFBModelCopyWith<$Res> {
  __$$_DataPictureFBModelCopyWithImpl(
      _$_DataPictureFBModel _value, $Res Function(_$_DataPictureFBModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? issilhouette = freezed,
    Object? url = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_DataPictureFBModel(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      issilhouette: freezed == issilhouette
          ? _value.issilhouette
          : issilhouette // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataPictureFBModel implements _DataPictureFBModel {
  _$_DataPictureFBModel(
      {@JsonKey(name: 'height') this.height,
      @JsonKey(name: 'is_silhouette') this.issilhouette,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'width') this.width});

  factory _$_DataPictureFBModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataPictureFBModelFromJson(json);

  @override
  @JsonKey(name: 'height')
  final int? height;
  @override
  @JsonKey(name: 'is_silhouette')
  final bool? issilhouette;
  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'width')
  final int? width;

  @override
  String toString() {
    return 'DataPictureFBModel(height: $height, issilhouette: $issilhouette, url: $url, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataPictureFBModel &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.issilhouette, issilhouette) ||
                other.issilhouette == issilhouette) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, height, issilhouette, url, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataPictureFBModelCopyWith<_$_DataPictureFBModel> get copyWith =>
      __$$_DataPictureFBModelCopyWithImpl<_$_DataPictureFBModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataPictureFBModelToJson(
      this,
    );
  }
}

abstract class _DataPictureFBModel implements DataPictureFBModel {
  factory _DataPictureFBModel(
      {@JsonKey(name: 'height') final int? height,
      @JsonKey(name: 'is_silhouette') final bool? issilhouette,
      @JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'width') final int? width}) = _$_DataPictureFBModel;

  factory _DataPictureFBModel.fromJson(Map<String, dynamic> json) =
      _$_DataPictureFBModel.fromJson;

  @override
  @JsonKey(name: 'height')
  int? get height;
  @override
  @JsonKey(name: 'is_silhouette')
  bool? get issilhouette;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'width')
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$_DataPictureFBModelCopyWith<_$_DataPictureFBModel> get copyWith =>
      throw _privateConstructorUsedError;
}
