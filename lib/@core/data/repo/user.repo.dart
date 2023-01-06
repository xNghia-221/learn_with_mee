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
}