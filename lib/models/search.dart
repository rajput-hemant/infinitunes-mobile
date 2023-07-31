import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'search.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class Search<T> {
  int position;
  List<T> results;

  Search({
    required this.position,
    required this.results,
  });

  factory Search.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic json) fromJsonT,
  ) =>
      _$SearchFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$SearchToJson(this, toJsonT);
}

@JsonSerializable(explicitToJson: true, checked: true)
class SearchAllResponse {
  final Search<AlbumResponse> albums;
  final Search<SongResponse> songs;
  final Search<ArtistResponse> artists;
  final Search<PlaylistResponse> playlists;
  final Search<TopQueryResponse> topQuery;

  SearchAllResponse({
    required this.albums,
    required this.songs,
    required this.artists,
    required this.playlists,
    required this.topQuery,
  });

  factory SearchAllResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchAllResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchAllResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class SongResponse {
  final String id;
  final String title;
  final List<DownloadLink> image;
  final String album;
  final String url;
  final String type;
  final String description;
  final int position;
  final String primaryArtists;
  final String singers;
  final String language;

  SongResponse({
    required this.id,
    required this.title,
    required this.image,
    required this.album,
    required this.url,
    required this.type,
    required this.description,
    required this.position,
    required this.primaryArtists,
    required this.singers,
    required this.language,
  });

  factory SongResponse.fromJson(Map<String, dynamic> json) =>
      _$SongResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SongResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class AlbumResponse {
  final String id;
  final String title;
  final List<DownloadLink> image;
  final String artist;
  final String url;
  final String type;
  final String description;
  final int position;
  final String year;
  final String language;
  final String songIds;

  AlbumResponse({
    required this.id,
    required this.title,
    required this.image,
    required this.artist,
    required this.url,
    required this.type,
    required this.description,
    required this.position,
    required this.year,
    required this.language,
    required this.songIds,
  });

  factory AlbumResponse.fromJson(Map<String, dynamic> json) =>
      _$AlbumResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class ArtistResponse {
  final String id;
  final String title;
  final List<DownloadLink> image;
  final String url;
  final String type;
  final String description;
  final int position;

  ArtistResponse({
    required this.id,
    required this.title,
    required this.image,
    required this.url,
    required this.type,
    required this.description,
    required this.position,
  });

  factory ArtistResponse.fromJson(Map<String, dynamic> json) =>
      _$ArtistResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class PlaylistResponse {
  final String id;
  final String title;
  final List<DownloadLink> image;
  final String url;
  final String language;
  final String type;
  final String description;
  final int position;

  PlaylistResponse({
    required this.id,
    required this.title,
    required this.image,
    required this.url,
    required this.language,
    required this.type,
    required this.description,
    required this.position,
  });

  factory PlaylistResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaylistResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class TopQueryResponse {
  final String id;
  final String title;
  final List<DownloadLink> image;
  final String? album;
  final String url;
  final String type;
  final String description;
  final int position;
  final String? primaryArtists;
  final String? singers;
  final String? language;

  TopQueryResponse({
    required this.id,
    required this.title,
    required this.image,
    required this.album,
    required this.url,
    required this.type,
    required this.description,
    required this.position,
    required this.primaryArtists,
    required this.singers,
    required this.language,
  });

  factory TopQueryResponse.fromJson(Map<String, dynamic> json) =>
      _$TopQueryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TopQueryResponseToJson(this);
}
