import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'song.g.dart';

@JsonSerializable(explicitToJson: true)
class Song {
  String id;
  String? name;
  String? type;
  Album? album;
  String? year;
  String? releaseDate;
  String? duration;
  String? label;
  String? primaryArtists;
  String? primaryArtistsId;
  String? featuredArtists;
  String? featuredArtistsId;
  int? explicitContent;
  // String? playCount;
  String? language;
  String? hasLyrics;
  String? url;
  String? copyright;
  List<DownloadUrl>? image;
  List<DownloadUrl>? downloadUrl;

  Song({
    required this.id,
    this.name,
    this.type,
    this.album,
    this.year,
    this.releaseDate,
    this.duration,
    this.label,
    this.primaryArtists,
    this.primaryArtistsId,
    this.featuredArtists,
    this.featuredArtistsId,
    this.explicitContent,
    // this.playCount,
    this.language,
    this.hasLyrics,
    this.url,
    this.copyright,
    this.image,
    this.downloadUrl,
  });

  factory Song.fromJson(Map<String, dynamic> json) => _$SongFromJson(json);

  Map<String, dynamic> toJson() => _$SongToJson(this);
}
