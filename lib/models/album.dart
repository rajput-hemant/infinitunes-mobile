import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'album.g.dart';

@JsonSerializable(explicitToJson: true, checked: true)
class Album {
  final String id;
  final String name;
  final String year;
  final String? type;
  final String? playCount;
  final String? language;
  final String? explicitContent;
  final String? primaryArtistsId;

  /// `string` or a `List<Artist>`
  final dynamic primaryArtists;
  final List<Artist> artists;
  final List<Artist>? featuredArtists;
  final String songCount;
  final String? releaseDate;
  final List<DownloadLink> image;
  final String url;

  List<Song> songs;

  Album({
    required this.id,
    required this.name,
    required this.year,
    required this.type,
    required this.playCount,
    required this.language,
    required this.explicitContent,
    required this.primaryArtistsId,
    required this.primaryArtists,
    required this.artists,
    required this.featuredArtists,
    required this.songCount,
    required this.releaseDate,
    required this.image,
    required this.url,
    required this.songs,
  });

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumToJson(this);
}
