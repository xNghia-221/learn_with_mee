import '../response/base.response.dart';
import 'data_model.dart';

class Video extends BaseResponse {
  bool? statusVideo;
  Data? dataVideo;
  String? mediaUrl;

  Video({this.statusVideo, this.dataVideo, this.mediaUrl}) : super();

  Video.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    mediaUrl = json['media_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = statusVideo;
    if (dataVideo != null) {
      data['data'] = this.data!.toJson();
    }
    data['media_url'] = mediaUrl;
    return data;
  }
}
