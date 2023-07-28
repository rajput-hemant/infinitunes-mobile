import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'playlist.g.dart';

@JsonSerializable(explicitToJson: true)
class Playlist {
  String id;
  String? userId;
  String? title;
  String? subtitle;
  String? type;
  List<DownloadUrl>? image;
  String? url;
  String? songCount;
  String? firstname;
  String? followerCount;
  String? lastUpdated;
  String? explicitContent;
  List<Song>? songs;

  Playlist({
    required this.id,
    this.userId,
    this.title,
    this.subtitle,
    this.type,
    this.image,
    this.url,
    this.songCount,
    this.firstname,
    this.followerCount,
    this.lastUpdated,
    this.explicitContent,
    this.songs,
  });

  factory Playlist.fromJson(Map<String, dynamic> json) =>
      _$PlaylistFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistToJson(this);
}
