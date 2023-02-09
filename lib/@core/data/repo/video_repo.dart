import 'package:learn_with_mee/@core/data/repo/model/data_model.dart';
import 'package:learn_with_mee/@core/data/repo/response/base.data.dart';

import '../api/video_list_api.dart';

class VideoRepo {
  final VideoListApi videoListApi;

  VideoRepo(this.videoListApi);

  Future<BaseData<Data>?> getListVideo({int? limit, int? page}) async {
    var res = await videoListApi.getListVideo(limit: limit, page: page);
    return res?.status == true
        ? BaseData(
            code: res?.code, data: Data.fromJson(res?.data, res?.mediaUrl))
        : null;
  }

  Future<Data?> getListVideoOfTeacher(int? limit, int? page,
      {required String teacherId}) async {
    var res = await videoListApi.getListVideoOfTeacher(limit, page,
        teacherId: teacherId);
    return res?.status == true ? Data.fromJson(res?.data, res?.mediaUrl) : null;
  }
}
