import 'package:get/get.dart';
import 'package:learn_with_mee/@core/data/local/storage/data.storage.dart';
import 'package:learn_with_mee/constant.dart';

import '../../../@share/constants/value.constant.dart';
import '../../../@share/utils/util.dart';
import '../repo/response/base.response.dart';

class BaseConnect extends GetConnect {
  @override
  void onInit() {
    httpClient
      ..baseUrl = Constants.of().endpoint
      ..maxAuthRetries = MAX_AUTH_RETRIES
      ..timeout = const Duration(seconds: MAX_TIME_OUT)
      ..defaultContentType = CONTENT_TYPE
      ..addAuthenticator<dynamic>((request) {
        //var token = Get.find<DataStorage>().getToken();
        Get.log('[HEADER] : ${request.headers.toString()}');
        return request;
      })
      ..addRequestModifier<dynamic>((request) {
        var credentials = Get.find<DataStorage>().getCredentials().accessToken;
        request.headers[ACCEPT] = CONTENT;
        request.headers[AUTHORIZATION] = "$BEARER $credentials";
        Get.log('[URL] : ${request.url}');
        return request;
      });
  }

  // var token = Get.find<DataStorage>().getToken();
  // if (token != null) request.headers[AUTHORIZATION] = "$BEARER $token";
  // Get.log('[HEADER] : ${request.headers.toString()}');
  // return request;)

  Future<BaseResponse?> getResponse(String url, {dynamic query}) async {
    Get.log('[QUERY] : $query');
    var response = await get(url,
        query: query, decoder: (map) => BaseResponse.fromMap(map));
    if (response.isOk) {
      Get.log('[RESPONSE] : ${response.body}');
      return response.body;
    } else {
      dispose();
      hideLoading();
      return BaseResponse(
          success: false,
          message: response.body?.message,
          code: response.status.code);
    }
  }

  Future<BaseResponse?> postRequest(String url, {dynamic body}) async {
    Get.log('[BODY] : ${body.toString()}');
    var response =
        await post(url, body, decoder: (map) => BaseResponse.fromMap(map));
    if (response.isOk) {
      Get.log('[RESPONSE] : ${response.body?.toMap()}');
      return response.body;
    } else {
      dispose();
      hideLoading();
      return BaseResponse(
          success: false,
          message: response.body?.message,
          code: response.status.code);
    }
  }

  Future<dynamic> postRequestDynamic(String url, {dynamic body}) async {
    Get.log('[BODY] : ${body.toString()}');
    var response =
    await post(url, body);
    if (response.isOk) {
      return response.body;
    } else {
      dispose();
      hideLoading();
      return BaseResponse(
          success: false,
          message: response.body?.message,
          code: response.status.code);
    }
  }
}
