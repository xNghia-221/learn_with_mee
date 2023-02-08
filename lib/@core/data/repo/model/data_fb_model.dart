import 'package:learn_with_mee/@core/data/repo/model/picture_model.dart';

class DataFBModel {
  String? name;
  String? email;
  PictureModel? picture;
  String? id;

  DataFBModel({this.name, this.email, this.picture, this.id});

  DataFBModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    picture = json['picture'] != null
        ? PictureModel?.fromJson(json['picture'])
        : null;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['email'] = email;
    data['picture'] = picture!.toJson();
    data['id'] = id;
    return data;
  }
}
