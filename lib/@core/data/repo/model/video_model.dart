import '../response/base.response.dart';
import 'data_model.dart';

class Video extends BaseResponse {
  bool? statusVideo;
  Data? dataVideo;

  Video({this.statusVideo, this.dataVideo}) : super();

  Video.fromJson(Map<String, dynamic> json, String? baseUrlVideo) {
    statusVideo = json['status'];
    dataVideo =
        json['data'] != null ? Data.fromJson(json['data'], baseUrlVideo) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = statusVideo;
    if (dataVideo != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}
