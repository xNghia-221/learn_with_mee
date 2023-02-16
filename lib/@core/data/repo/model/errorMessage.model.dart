import 'package:freezed_annotation/freezed_annotation.dart';
part 'errorMessage.model.freezed.dart';
part 'errorMessage.model.g.dart';

@freezed
class ErrorMessageModel with _$ErrorMessageModel {
  factory ErrorMessageModel({
    @JsonKey(name:'field') String? field,
    @JsonKey(name:'message') String? message,
  })= _ErrorMessageModel;

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorMessageModelFromJson(json);
}