import 'package:learn_with_mee/@core/data/repo/model/LoginRequest.dart';
import 'package:learn_with_mee/@core/data/repo/model/LoginResponse.dart';
import 'package:learn_with_mee/@core/data/repo/model/credentials.model.dart';
import 'package:learn_with_mee/@core/data/repo/model/credentials_token.model.dart';
import 'package:learn_with_mee/@core/data/repo/model/user.dart';
import 'package:learn_with_mee/@core/data/repo/response/base.data.dart';

import '../api/user.api.dart';
import 'model/loginInfo.model.dart';
import 'model/userInfo.model.dart';

class UserRepo {
  final UserApi userApi;

  UserRepo(this.userApi);

  Future<LoginInfoModel?> loginManual(
      {required String email,
      required String password,
      required String fcmToken}) async {
    var res = await userApi.loginManual(
        {'email': email, 'password': password, 'fcm_token': fcmToken});
    return res?.success == true ? LoginInfoModel.fromMap(res?.data) : null;
  }

  Future<UserInfoModel?> getMyPage() async {
    var res = await userApi.getMyPage();
    return res?.success == true ? UserInfoModel.fromMap(res?.data) : null;
  }

  Future<BaseData<User>?> getProfile({required String id}) async {
    var res = await userApi.getProfile(id: id);
    return res?.status == true
        ? BaseData(code: res?.code, data: User.fromJson(res?.data).mapLink(res?.mediaUrl))
        : null;
  }

  Future<CredentialsToken?> clientCredentials(
      {required Credentials credentials}) async {
    var res = await userApi.clientCredentials(credentials.toJson());
    return res != null ? CredentialsToken.fromJson(res) : null;
  }

  Future<LoginResponse?> login({required LoginRequest loginRequest}) async {
    var res = await userApi.login(loginRequest.toJson());
    return res != null ? LoginResponse.fromJson(res) : null;
  }
}
