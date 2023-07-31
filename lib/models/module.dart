import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'module.g.dart';

@JsonSerializable(explicitToJson: true, checked: true)
class Module {
  final List<ModuleAlbum> albums;
  final List<ModulePlaylist> playlists;
  final List<ModuleChart> charts;
  final Trending trending;

  Module({
    required this.albums,
    required this.playlists,
    required this.charts,
    required this.trending,
  });

  factory Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);

  Map<String, dynamic> toJson() => _$ModuleToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class ModulePlaylist {
  final String id;
  final String title;
  final String subtitle;
  final String type;
  final List<DownloadLink> image;
  final String url;
  final String songCount;
  final String firstname;
  final String followerCount;
  final String lastUpdated;
  final String userId;
  final String explicitContent;

  ModulePlaylist({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.type,
    required this.image,
    required this.url,
    required this.songCount,
    required this.firstname,
    required this.followerCount,
    required this.lastUpdated,
    required this.userId,
    required this.explicitContent,
  });

  factory ModulePlaylist.fromJson(Map<String, dynamic> json) =>
      _$ModulePlaylistFromJson(json);

  Map<String, dynamic> toJson() => _$ModulePlaylistToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class ModuleChart {
  final String id;
  final String title;
  final String subtitle;
  final String type;
  final List<DownloadLink> image;
  final String url;
  final String firstname;
  final String explicitContent;
  final String language;

  ModuleChart({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.type,
    required this.image,
    required this.url,
    required this.firstname,
    required this.explicitContent,
    required this.language,
  });

  factory ModuleChart.fromJson(Map<String, dynamic> json) =>
      _$ModuleChartFromJson(json);

  Map<String, dynamic> toJson() => _$ModuleChartToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class Trending {
  final List<ModuleAlbum> albums;
  final List<ModuleSong> songs;

  Trending({
    required this.albums,
    required this.songs,
  });

  factory Trending.fromJson(Map<String, dynamic> json) =>
      _$TrendingFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class ModuleAlbum {
  final String id;
  final String name;
  final String year;
  final String type;
  final String playCount;
  final String language;
  final String explicitContent;
  final List<Artist> primaryArtists;
  final List<Artist> featuredArtists;
  final List<Artist> artists;
  final String? songCount;
  final List<DownloadLink> image;
  final String url;

  ModuleAlbum({
    required this.id,
    required this.name,
    required this.year,
    required this.type,
    required this.playCount,
    required this.language,
    required this.explicitContent,
    required this.primaryArtists,
    required this.featuredArtists,
    required this.artists,
    required this.songCount,
    required this.image,
    required this.url,
  });

  factory ModuleAlbum.fromJson(Map<String, dynamic> json) =>
      _$ModuleAlbumFromJson(json);

  Map<String, dynamic> toJson() => _$ModuleAlbumToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class ModuleSong {
  final String id;
  final String name;
  final String type;
  final SongAlbum album;
  final String year;
  final String releaseDate;
  final String duration;
  final String label;

  /// `string` or `List<Artist>`
  final dynamic primaryArtists;

  /// `string` or `List<Artist>`
  final dynamic featuredArtists;
  final String explicitContent;
  final String playCount;
  final String language;
  final String url;
  final List<DownloadLink> image;

  ModuleSong({
    required this.id,
    required this.name,
    required this.type,
    required this.album,
    required this.year,
    required this.releaseDate,
    required this.duration,
    required this.label,
    required this.primaryArtists,
    required this.featuredArtists,
    required this.explicitContent,
    required this.playCount,
    required this.language,
    required this.url,
    required this.image,
  });

  factory ModuleSong.fromJson(Map<String, dynamic> json) =>
      _$ModuleSongFromJson(json);

  Map<String, dynamic> toJson() => _$ModuleSongToJson(this);
}
