// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workHistory.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkHistoryModel _$WorkHistoryModelFromJson(Map<String, dynamic> json) {
  return _WorkHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$WorkHistoryModel {
  @JsonKey(name: 'business_name')
  String? get businessName => throw _privateConstructorUsedError;
  @JsonKey(name: 'position_name')
  String? get positionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'position_id')
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkHistoryModelCopyWith<WorkHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkHistoryModelCopyWith<$Res> {
  factory $WorkHistoryModelCopyWith(
          WorkHistoryModel value, $Res Function(WorkHistoryModel) then) =
      _$WorkHistoryModelCopyWithImpl<$Res, WorkHistoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'business_name') String? businessName,
      @JsonKey(name: 'position_name') String? positionName,
      @JsonKey(name: 'position_id') int? id});
}

/// @nodoc
class _$WorkHistoryModelCopyWithImpl<$Res, $Val extends WorkHistoryModel>
    implements $WorkHistoryModelCopyWith<$Res> {
  _$WorkHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessName = freezed,
    Object? positionName = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      businessName: freezed == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      positionName: freezed == positionName
          ? _value.positionName
          : positionName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkHistoryModelCopyWith<$Res>
    implements $WorkHistoryModelCopyWith<$Res> {
  factory _$$_WorkHistoryModelCopyWith(
          _$_WorkHistoryModel value, $Res Function(_$_WorkHistoryModel) then) =
      __$$_WorkHistoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'business_name') String? businessName,
      @JsonKey(name: 'position_name') String? positionName,
      @JsonKey(name: 'position_id') int? id});
}

/// @nodoc
class __$$_WorkHistoryModelCopyWithImpl<$Res>
    extends _$WorkHistoryModelCopyWithImpl<$Res, _$_WorkHistoryModel>
    implements _$$_WorkHistoryModelCopyWith<$Res> {
  __$$_WorkHistoryModelCopyWithImpl(
      _$_WorkHistoryModel _value, $Res Function(_$_WorkHistoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessName = freezed,
    Object? positionName = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_WorkHistoryModel(
      businessName: freezed == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      positionName: freezed == positionName
          ? _value.positionName
          : positionName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkHistoryModel implements _WorkHistoryModel {
  _$_WorkHistoryModel(
      {@JsonKey(name: 'business_name') this.businessName,
      @JsonKey(name: 'position_name') this.positionName,
      @JsonKey(name: 'position_id') this.id});

  factory _$_WorkHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_WorkHistoryModelFromJson(json);

  @override
  @JsonKey(name: 'business_name')
  final String? businessName;
  @override
  @JsonKey(name: 'position_name')
  final String? positionName;
  @override
  @JsonKey(name: 'position_id')
  final int? id;

  @override
  String toString() {
    return 'WorkHistoryModel(businessName: $businessName, positionName: $positionName, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkHistoryModel &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.positionName, positionName) ||
                other.positionName == positionName) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, businessName, positionName, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkHistoryModelCopyWith<_$_WorkHistoryModel> get copyWith =>
      __$$_WorkHistoryModelCopyWithImpl<_$_WorkHistoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkHistoryModelToJson(
      this,
    );
  }
}

abstract class _WorkHistoryModel implements WorkHistoryModel {
  factory _WorkHistoryModel(
      {@JsonKey(name: 'business_name') final String? businessName,
      @JsonKey(name: 'position_name') final String? positionName,
      @JsonKey(name: 'position_id') final int? id}) = _$_WorkHistoryModel;

  factory _WorkHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_WorkHistoryModel.fromJson;

  @override
  @JsonKey(name: 'business_name')
  String? get businessName;
  @override
  @JsonKey(name: 'position_name')
  String? get positionName;
  @override
  @JsonKey(name: 'position_id')
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_WorkHistoryModelCopyWith<_$_WorkHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
