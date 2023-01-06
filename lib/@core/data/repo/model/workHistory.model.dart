class WorkHistoryModel {
  String? businessName;
  String? positionName;
  int? id;

  WorkHistoryModel({this.businessName, this.positionName, this.id});

  factory WorkHistoryModel.fromMap(Map<String, dynamic> map) =>
      WorkHistoryModel(
        businessName: map['business_name'] as String,
        positionName: map['position_name'] as String,
        id: map['position_id'] as int,
      );

  Map<String, dynamic> toMap() => {
        'businessName': businessName,
        'positionName': positionName,
        'id': id,
      };
}
