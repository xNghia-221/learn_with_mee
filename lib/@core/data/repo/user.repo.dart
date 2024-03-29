import 'package:learn_with_mee/@core/data/repo/base.repo.dart';
import 'package:learn_with_mee/@core/data/repo/model/LoginRequest.dart';
import 'package:learn_with_mee/@core/data/repo/model/LoginResponse.dart';
import 'package:learn_with_mee/@core/data/repo/model/credentials.model.dart';
import 'package:learn_with_mee/@core/data/repo/model/credentials_token.model.dart';
import 'package:learn_with_mee/@core/data/repo/model/user.dart';
import 'package:learn_with_mee/@core/data/repo/response/base.response.dart';

import '../api/user.api.dart';

class UserRepo extends BaseRepo {
  final UserApi userApi;

  UserRepo(this.userApi);

  Future<User?> getProfile({required String id}) async {
    var res = await userApi.getProfile(id: id);
    return res?.status != false
        ? User.fromJson(res?.data).mapLink(res?.mediaUrl)
        : errorApi(response: res);
  }

  Future<CredentialsToken?> clientCredentials(
      {required Credentials credentials}) async {
    var res = await userApi.clientCredentials(credentials: credentials);
    return res != null ? CredentialsToken.fromJson(res) : null;
  }

  Future<LoginResponse?> login({required LoginRequest loginRequest}) async {
    var res = await userApi.login(loginRequest: loginRequest);
    return res != null ? LoginResponse.fromJson(res) : null;
  }

  Future<BaseResponse?> getVersion() async {
    var res = await userApi.getVersion();
    return res?.status != false ? res : errorApi(response: res);
  }

  Future<BaseResponse?> followTeacher(
      {required String teacherId, required int isFollow}) async {
    var res = await userApi.followTeacher(id: teacherId, isFollow: isFollow);
    return res?.message == null ? res : errorApi(response: res);
  }

  Future<BaseResponse?> likeVideoOfTeacher(
      {required String videoId, required int isLike}) async {
    var res =
        await userApi.likeVideoOfTeacher(idVideo: videoId, isLike: isLike);
    return res?.message == null ? res : errorApi(response: res);
  }
}
