import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'song.g.dart';

@JsonSerializable(explicitToJson: true, checked: true)
class Song {
  final String id;
  final String name;
  final String type;
  final SongAlbum album;
  final String year;
  final String? releaseDate;
  final String duration;
  final String label;
  final String primaryArtists;
  final String featuredArtists;
  final String primaryArtistsId;
  final String featuredArtistsId;

  /// `string` or `int`
  final dynamic explicitContent;

  /// `string` or `int`
  final dynamic playCount;
  final String language;
  final String hasLyrics;
  final String url;
  final String copyright;
  final List<DownloadLink> image;
  final List<DownloadLink> downloadUrl;

  Song({
    required this.id,
    required this.name,
    required this.type,
    required this.album,
    required this.year,
    required this.releaseDate,
    required this.duration,
    required this.label,
    required this.primaryArtists,
    required this.primaryArtistsId,
    required this.featuredArtists,
    required this.featuredArtistsId,
    required this.explicitContent,
    required this.playCount,
    required this.language,
    required this.hasLyrics,
    required this.url,
    required this.image,
    required this.downloadUrl,
    required this.copyright,
  });

  factory Song.fromJson(Map<String, dynamic> json) => _$SongFromJson(json);

  Map<String, dynamic> toJson() => _$SongToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class SongAlbum {
  final String id;
  final String name;
  final String url;

  SongAlbum({
    required this.id,
    required this.name,
    required this.url,
  });

  factory SongAlbum.fromJson(Map<String, dynamic> json) =>
      _$SongAlbumFromJson(json);

  Map<String, dynamic> toJson() => _$SongAlbumToJson(this);
}
