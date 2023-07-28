import 'package:json_annotation/json_annotation.dart';

part 'download_url.g.dart';

@JsonSerializable()
class DownloadUrl {
  String? quality;
  String? link;

  DownloadUrl({this.quality, this.link});

  factory DownloadUrl.fromJson(Map<String, dynamic> json) =>
      _$DownloadUrlFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadUrlToJson(this);
}
