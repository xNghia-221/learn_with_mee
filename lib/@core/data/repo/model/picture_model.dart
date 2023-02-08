import 'data_picture_fb_model.dart';

class PictureModel {
  DataPictureFBModel? data;

  PictureModel({this.data});

  PictureModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null
        ? DataPictureFBModel?.fromJson(json['data'])
        : null;
  }

  DataPictureFBModel? toJson() {
    final Map<String, dynamic> dataPicture = <String, dynamic>{};
    dataPicture['data'] = data?.toJson();
    return data;
  }
}
