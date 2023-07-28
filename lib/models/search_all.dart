import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'search_all.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchAll {
  SearchResult<TopQuery>? topQuery;
  SearchResult<TopQuery>? songs;
  SearchResult<TopQuery>? albums;
  SearchResult<TopQuery>? artists;
  SearchResult<Playlist>? playlists;

  SearchAll({
    this.topQuery,
    this.songs,
    this.albums,
    this.artists,
    this.playlists,
  });

  factory SearchAll.fromJson(Map<String, dynamic> json) =>
      _$SearchAllFromJson(json);

  Map<String, dynamic> toJson() => _$SearchAllToJson(this);
}
