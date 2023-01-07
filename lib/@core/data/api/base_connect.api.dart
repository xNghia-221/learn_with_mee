import 'package:get/get.dart';
import 'package:learn_with_mee/constant.dart';

import '../../../@share/constants/value.constant.dart';
import '../../../@share/utils/util.dart';
import '../repo/response/base.response.dart';

class BaseConnect extends GetConnect {
  @override
  void onInit() {
    httpClient
      ..baseUrl = Constants.dev().endpoint
      ..maxAuthRetries = MAX_AUTH_RETRIES
      ..timeout = const Duration(seconds: MAX_TIME_OUT)
      ..defaultContentType = CONTENT_TYPE
      ..addAuthenticator<dynamic>((request) {
        var hardCodeToken =
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5N2ZlMjJkNC1hOGNhLTQ0ZWUtYTBjOC1mYmMxZDA0MTViNzUiLCJqdGkiOiI1MjcwZWRmYmYyNzA2NDg2YjMxNjQ4YjllMzEzNWIzOTc1MWJjNDFmZjc0MTc3Mzc1YzBiOTAxNzZhZGNmMGI5NDQ5MjViNmE4NTI0ZjJhNyIsImlhdCI6MTY3MzA3NzMxNC42NjA2NiwibmJmIjoxNjczMDc3MzE0LjY2MDY2MywiZXhwIjoxNzA0NjEzMzE0LjY1NDU3Nywic3ViIjoiIiwic2NvcGVzIjpbIioiXX0.NnLCg7PuVlCNvWqN_q4-coCtLB7k34ywYgdLb5Z-16dUFuSgnmEmZHnwdd2g_CuQvW5fC0i7lU_xjktt_cGK5SX76hdpz6TjG4KpcMp6nTsiyoMAgKPHlwKPEpyLn7Lt9yhHYzVaRSk_0KODBx21fimcmPFj1DMZjSEdD2opf7q4hHe3NppyVyT74Rb_97HM7CFJ59v8i2aLZnhR3psZnkpjKE0ol1_b3ECcTNOwbljLsOjae4deU0vh4pI6sgEqNsbCJxlMzUQBadk-d29Sld1qvuJPPP__jetHSysdOYqnOmn6iyDoW4HzxxNJMkKQb5VnXXf5FqbUR5jYDArPdz1mscXVBEfe8Fo-BVNKqs-1EfC1ipBXjMt9yAquUbP4AG4S1zomZaR-3v9TIVlnh2QR83fN-EeypNG_iD_TcykBAF-VNjA88uL9imd4WVctO42jjQHhVe1lFFSwstjeklt-lSkeBcIad2eI2eBHswuwhmsMTfJ_wuC6r4wfsk2XMal_56csw7cv4kY9cmVplqPa6BHXnaR9kZSVjnOM7lRi62614Uiin17_Up-GH60MqMblfA4lW5NsdZsdc5OaVRU4yfhxW4iErDocUGlev9C4nY5yWg6yRWYdGS7kcbR22kAGIHQIlp-Tl2L-SSsOMWZKp6fUd31GXv20OuCPluw";
        //var token = Get.find<DataStorage>().getToken();
        request.headers[ACCEPT] = CONTENT;
        request.headers[AUTHORIZATION] = hardCodeToken;
        Get.log('[HEADER] : ${request.headers.toString()}');
        return request;
      })
      ..addRequestModifier<dynamic>((request) {
        Get.log('[URL] : ${request.url}');
        return request;
      });
  }

  // var token = Get.find<DataStorage>().getToken();
  // if (token != null) request.headers[AUTHORIZATION] = "$BEARER $token";
  // Get.log('[HEADER] : ${request.headers.toString()}');
  // return request;)

  Future<dynamic?> getResponse(String url, {dynamic query}) async {
    Get.log('[QUERY] : $query');
    var response = await get(url,
        query: query, decoder: (map) => BaseResponse.fromMap(map));
    if (response.isOk) {
      Get.log('[RESPONSE] : ${response.body?.toMap()}');
      return response.body;
    } else {
      dispose();
      hideLoading();
      return BaseResponse(
          success: false,
          message: response.statusText,
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
          message: response.statusText,
          code: response.status.code);
    }
  }
}
