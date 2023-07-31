import 'package:json_annotation/json_annotation.dart';

part 'download_link.g.dart';

@JsonSerializable()
class DownloadLink {
  final String quality;
  final String link;

  DownloadLink({
    required this.quality,
    required this.link,
  });

  factory DownloadLink.fromJson(Map<String, dynamic> json) =>
      _$DownloadLinkFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadLinkToJson(this);
}
