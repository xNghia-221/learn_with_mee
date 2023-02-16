import 'package:freezed_annotation/freezed_annotation.dart';
part 'links_model.freezed.dart';
part 'links_model.g.dart';

@freezed
class Links with _$Links {
  factory Links({
    @JsonKey(name:'url') String? url,
    @JsonKey(name:'label') String? label,
    @JsonKey(name:'active') bool? active,
  })= _Links;

  factory Links.fromJson(Map<String, dynamic> json) =>
      _$LinksFromJson(json);
}
