import 'package:learn_with_mee/@core/data/repo/model/LoginRequest.dart';
import 'package:learn_with_mee/@core/data/repo/model/credentials.model.dart';

import '../repo/response/base.response.dart';
import 'base_connect.api.dart';

class UserApi extends BaseConnect {
  Future<BaseResponse?> loginManual(Map<String, dynamic> map) async {
    return await postRequest('user/login', body: map);
  }

  Future<BaseResponse?> getMyPage() async {
    return await getResponse('user/my_page');
  }

  Future<BaseResponse?> getProfile({required String id}) async {
    return await getResponse('/api/teachers/$id');
  }

  Future<dynamic> clientCredentials({required Credentials credentials}) async {
    return await postRequestDynamic('/oauth/token', body: credentials);
  }

  Future<dynamic> login({required LoginRequest loginRequest}) async {
    return await postRequestDynamic('/api/users/login', body: loginRequest.toJson());
  }

  Future<BaseResponse?> getVersion() async {
    return await getResponse('/api/app-version');
  }

// Future<BaseResponse> postImages(List<String> image) {
//   final form = FormData({
//     'file': MultipartFile(image, filename: 'avatar.png'),
//     'otherFile': MultipartFile(image, filename: 'cover.png'),
//   });
//   return postRequest('abc/', body: form);
// }
}
