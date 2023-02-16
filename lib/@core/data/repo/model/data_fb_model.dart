import 'package:learn_with_mee/@core/data/repo/model/picture_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_fb_model.freezed.dart';
part 'data_fb_model.g.dart';

@freezed
class DataFBModel with _$DataFBModel {
  factory DataFBModel({
    @JsonKey(name:'name') String? name,
    @JsonKey(name:'email') String? email,
    @JsonKey(name:'picture') PictureModel? picture,
    @JsonKey(name:'id') String? id,
  })= _DataFBModel;

  factory DataFBModel.fromJson(Map<String, dynamic> json) =>
      _$DataFBModelFromJson(json);
}
