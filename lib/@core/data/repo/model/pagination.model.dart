import 'package:freezed_annotation/freezed_annotation.dart';
part 'pagination.model.freezed.dart';
part 'pagination.model.g.dart';

@freezed
class PaginationModel with _$PaginationModel {
  factory PaginationModel({
    @JsonKey(name:'count') int? count,
    @JsonKey(name:'total') int? total,
    @JsonKey(name:'perPage') int? perPage,
    @JsonKey(name:'currentPage') int? currentPage,
    @JsonKey(name:'totalPages') int? totalPages,
  })= _PaginationModel;

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
}
