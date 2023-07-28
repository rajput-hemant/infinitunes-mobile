import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'album.g.dart';

@JsonSerializable(explicitToJson: true)
class Album {
  String id;
  String? name;
  String? type;
  String? year;
  String? releaseDate;
  String? playCount;
  String? language;
  String? explicitContent;
  String? songCount;
  String? url;
  String? primaryArtistsId;
  // List<Artist>? primaryArtists; // can be string or list of artists
  List<Artist>? featuredArtists;
  List<Artist>? artists;
  List<DownloadUrl>? image;
  List<Song>? songs;

  Album({
    required this.id,
    this.name,
    this.type,
    this.year,
    this.releaseDate,
    this.playCount,
    this.language,
    this.explicitContent,
    this.songCount,
    this.url,
    this.primaryArtistsId,
    // this.primaryArtists,
    this.featuredArtists,
    this.artists,
    this.image,
    this.songs,
  });

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumToJson(this);
}
