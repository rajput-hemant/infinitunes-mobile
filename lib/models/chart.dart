import 'package:json_annotation/json_annotation.dart';
import 'download_url.dart';

part 'chart.g.dart';

@JsonSerializable(explicitToJson: true)
class Chart {
  String id;
  String? title;
  String? subtitle;
  String? type;
  List<DownloadUrl>? image;
  String? url;
  String? firstname;
  String? explicitContent;
  String? language;

  Chart({
    required this.id,
    this.title,
    this.subtitle,
    this.type,
    this.image,
    this.url,
    this.firstname,
    this.explicitContent,
    this.language,
  });

  factory Chart.fromJson(Map<String, dynamic> json) => _$ChartFromJson(json);

  Map<String, dynamic> toJson() => _$ChartToJson(this);
}
