import 'package:learn_with_mee/@core/data/repo/model/video_model.dart';

import '../api/video_list_api.dart';

class VideoRepo {
  final VideoListApi videoListApi;

  VideoRepo(this.videoListApi);

  Future<Video?> getListVideo() async {
    var res = await videoListApi.getListVideo();
    return res?.success == true ? Video.fromJson(res?.data) : null;
  }

  Future<Video?> getListVideoOfTeacher(int? limit, int? page,
      {required String teacherId}) async {
    var res = await videoListApi.getListVideoOfTeacher(limit, page,
        teacherId: teacherId);
    return res?.success == true ? Video.fromJson(res?.data) : null;
  }
}
