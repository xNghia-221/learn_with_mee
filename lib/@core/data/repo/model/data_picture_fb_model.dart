import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_picture_fb_model.freezed.dart';
part 'data_picture_fb_model.g.dart';

@freezed
class DataPictureFBModel with _$DataPictureFBModel {
  factory DataPictureFBModel({
    @JsonKey(name:'height') int? height,
    @JsonKey(name:'is_silhouette') bool? issilhouette,
    @JsonKey(name:'url') String? url,
    @JsonKey(name:'width') int? width,
  })= _DataPictureFBModel;

  factory DataPictureFBModel.fromJson(Map<String, dynamic> json) =>
      _$DataPictureFBModelFromJson(json);
}
