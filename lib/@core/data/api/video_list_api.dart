import 'package:learn_with_mee/@core/data/repo/model/video_model.dart';

import 'base_connect.api.dart';

class VideoListApi extends BaseConnect {
  Future<Video?> getListVideo() async {
    return await getResponse('/api/videos');
  }

  Future<Video?> getListVideoOfTeacher(int? limit, int? page,
      {required String teacherId}) async {
    return await getResponse('/api/videos/teacher', query: {
      "limit": limit ?? 10,
      "page": page ?? 1,
      "teacher_id": teacherId
    });
  }
}
