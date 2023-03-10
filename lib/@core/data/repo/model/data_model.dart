import 'data_video_detail_model.dart';
import 'links_model.dart';

/*import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    @JsonKey(name:'current_page') int? currentPage,
    @JsonKey(name:'data') List<DataVideoDetail>? data,
    @JsonKey(name:'first_page_url') String? firstPageUrl,
    @JsonKey(name:'from') int? from,
    @JsonKey(name:'last_page') int? lastPage,
    @JsonKey(name:'last_page_url') String? lastPageUrl,
    @JsonKey(name:'links') List<Links>? links,
    @JsonKey(name:'next_page_url') String? nextPageUrl,
    @JsonKey(name:'path') String? path,
    @JsonKey(name:'per_page') int? perPage,
    @JsonKey(name:'prev_page_url') String? prevPageUrl,
    @JsonKey(name:'to') int? to,
    @JsonKey(name:'total') int? total,
  })= _Data;

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}*/

class Data {
  int? currentPage;
  List<DataVideoDetail>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  String? prevPageUrl;
  int? to;
  int? total;

  Data(
      {this.currentPage,
      this.data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      this.links,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total});

  Data.fromJson(Map<String, dynamic> json, String? baseUrlVideo) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <DataVideoDetail>[];
      json['data'].forEach((v) {
        data!.add(DataVideoDetail.fromJson(v, baseUrlVideo));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(Links.fromJson(v));
      });
    }
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['current_page'] = currentPage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = firstPageUrl;
    data['from'] = from;
    data['last_page'] = lastPage;
    data['last_page_url'] = lastPageUrl;
    if (links != null) {
      data['links'] = links!.map((v) => v.toJson()).toList();
    }
    data['next_page_url'] = nextPageUrl;
    data['path'] = path;
    data['per_page'] = perPage;
    data['prev_page_url'] = prevPageUrl;
    data['to'] = to;
    data['total'] = total;
    return data;
  }
}
