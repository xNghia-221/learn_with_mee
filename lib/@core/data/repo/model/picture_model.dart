import 'data_picture_fb_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'picture_model.freezed.dart';
part 'picture_model.g.dart';

@freezed
class PictureModel with _$PictureModel {
  factory PictureModel({
    @JsonKey(name:'data') DataPictureFBModel? data,
  })= _PictureModel;

  factory PictureModel.fromJson(Map<String, dynamic> json) =>
      _$PictureModelFromJson(json);
}
