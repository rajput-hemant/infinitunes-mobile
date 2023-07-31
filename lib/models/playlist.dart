import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'playlist.g.dart';

@JsonSerializable(explicitToJson: true, checked: true)
class Playlist {
  final String id;
  final String userId;
  final String name;
  final String songCount;
  final String? fanCount;
  final String? followerCount;
  final String username;
  final String firstname;
  final String lastname;
  final String? language;
  final String? shares;
  final List<DownloadLink> image;
  final String url;
  final List<Song> songs;

  Playlist({
    required this.id,
    required this.userId,
    required this.name,
    required this.songCount,
    required this.fanCount,
    required this.followerCount,
    required this.username,
    required this.firstname,
    required this.lastname,
    required this.language,
    required this.shares,
    required this.image,
    required this.url,
    required this.songs,
  });

  factory Playlist.fromJson(Map<String, dynamic> json) =>
      _$PlaylistFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistToJson(this);
}
