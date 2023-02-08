class DataPictureFBModel {
  int? height;
  bool? issilhouette;
  String? url;
  int? width;

  DataPictureFBModel({this.height, this.issilhouette, this.url, this.width});

  DataPictureFBModel.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    issilhouette = json['is_silhouette'];
    url = json['url'];
    width = json['width'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['height'] = height;
    data['is_silhouette'] = issilhouette;
    data['url'] = url;
    data['width'] = width;
    return data;
  }
}
