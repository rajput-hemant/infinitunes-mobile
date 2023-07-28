import 'package:json_annotation/json_annotation.dart';

import 'models.dart';
part 'top_query.g.dart';

@JsonSerializable(explicitToJson: true)
class TopQuery {
  String id;
  String? title;
  List<DownloadUrl>? image;
  String? url;
  String? type;
  String? description;
  int? position;

  TopQuery({
    required this.id,
    required this.title,
    required this.image,
    required this.url,
    required this.type,
    required this.description,
    required this.position,
  });

  factory TopQuery.fromJson(Map<String, dynamic> json) =>
      _$TopQueryFromJson(json);

  Map<String, dynamic> toJson() => _$TopQueryToJson(this);
}
