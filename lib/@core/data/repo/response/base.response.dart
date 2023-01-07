import '../model/errorMessage.model.dart';

class BaseResponse {
  bool? status;
  int? code;
  bool? success;
  String? message;
  dynamic data;
  List<ErrorMessageModel>? errors;
  String? mediaUrl;

  BaseResponse(
      {this.status,
      this.success,
      this.message,
      this.data,
      this.errors,
      this.code,
      this.mediaUrl});

  factory BaseResponse.fromMap(dynamic map) {
    return map is Map
        ? BaseResponse(
            status: map['status'],
            code: map['code'],
            success: map['success'],
            message: map['message'],
            data: map['data'],
            errors: map['errors'],
            mediaUrl: map['media_url'],
          )
        : BaseResponse();
  }

  Map<String, dynamic> toMap() => {
        'status': status,
        'code': code,
        'success': success,
        'message': message,
        'data': data,
        'errors': errors,
        'media_url': mediaUrl,
      };
}
