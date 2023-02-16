import 'data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'workHistory.model.freezed.dart';
part 'workHistory.model.g.dart';

@freezed
class WorkHistoryModel with _$WorkHistoryModel {
  factory WorkHistoryModel({
    @JsonKey(name: 'business_name') String? businessName,
    @JsonKey(name: 'position_name') String? positionName,
    @JsonKey(name: 'position_id') int? id,
  })= _WorkHistoryModel;

  factory WorkHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$WorkHistoryModelFromJson(json);
}
