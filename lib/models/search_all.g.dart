// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_all.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchAll _$SearchAllFromJson(Map<String, dynamic> json) => SearchAll(
      topQuery: json['topQuery'] == null
          ? null
          : SearchResult<TopQuery>.fromJson(
              json['topQuery'] as Map<String, dynamic>,
              (value) => TopQuery.fromJson(value as Map<String, dynamic>)),
      songs: json['songs'] == null
          ? null
          : SearchResult<TopQuery>.fromJson(
              json['songs'] as Map<String, dynamic>,
              (value) => TopQuery.fromJson(value as Map<String, dynamic>)),
      albums: json['albums'] == null
          ? null
          : SearchResult<TopQuery>.fromJson(
              json['albums'] as Map<String, dynamic>,
              (value) => TopQuery.fromJson(value as Map<String, dynamic>)),
      artists: json['artists'] == null
          ? null
          : SearchResult<TopQuery>.fromJson(
              json['artists'] as Map<String, dynamic>,
              (value) => TopQuery.fromJson(value as Map<String, dynamic>)),
      playlists: json['playlists'] == null
          ? null
          : SearchResult<Playlist>.fromJson(
              json['playlists'] as Map<String, dynamic>,
              (value) => Playlist.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$SearchAllToJson(SearchAll instance) => <String, dynamic>{
      'topQuery': instance.topQuery?.toJson(
        (value) => value.toJson(),
      ),
      'songs': instance.songs?.toJson(
        (value) => value.toJson(),
      ),
      'albums': instance.albums?.toJson(
        (value) => value.toJson(),
      ),
      'artists': instance.artists?.toJson(
        (value) => value.toJson(),
      ),
      'playlists': instance.playlists?.toJson(
        (value) => value.toJson(),
      ),
    };
