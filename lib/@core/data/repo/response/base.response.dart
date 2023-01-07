import '../model/errorMessage.model.dart';
import '../model/pagination.model.dart';

class BaseResponse {
  bool? status;
  int? code;
  int? isBlock;
  int? isFirstLogin;
  bool? success;
  String? message;
  dynamic data;
  List<ErrorMessageModel>? errors;
  PaginationModel? pagination;
  String? mediaUrl;

  BaseResponse(
      {this.status,
      this.success,
      this.message,
      this.data,
      this.isFirstLogin,
      this.isBlock,
      this.errors,
      this.code,
      this.pagination,
      this.mediaUrl});

  factory BaseResponse.fromMap(dynamic map) {
    return map is Map
        ? BaseResponse(
            status: map['status'] as bool?,
            code: map['code'] as int?,
            isBlock: map['isBlock'] as int?,
            isFirstLogin: map['isFirstLogin'] as int?,
            success: map['success'] as bool?,
            message: map['message'] as String?,
            data: map['data'],
            errors: map['errors'] as List<ErrorMessageModel>?,
            pagination: map['pagination'] as PaginationModel?,
            mediaUrl: map['media_url'] as String?,
          )
        : BaseResponse();
  }

  Map<String, dynamic> toMap() => {
        'status': status,
        'code': code,
        'isBlock': isBlock,
        'isFirstLogin': isFirstLogin,
        'success': success,
        'message': message,
        'data': data,
        'errors': errors,
        'pagination': pagination,
        'media_url': mediaUrl,
      };
}
