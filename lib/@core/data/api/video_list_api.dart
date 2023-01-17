import 'package:learn_with_mee/@core/data/repo/response/base.response.dart';

import 'base_connect.api.dart';

class VideoListApi extends BaseConnect {
  Future<BaseResponse?> getListVideo({int? limit, int? page}) async {
    return getResponse('/api/videos', query: {
      "limit": "${limit ?? 10}",
      "page": "${page ?? 1}",
    });
  }

  Future<BaseResponse?> getListVideoOfTeacher(int? limit, int? page,
      {required String teacherId}) async {
    return await getResponse('/api/videos/teacher', query: {
      "limit": "${limit ?? 10}",
      "page": "${page ?? 1}",
      "teacher_id": teacherId
    });
  }
}
