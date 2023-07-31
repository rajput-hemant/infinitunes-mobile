// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Search<T> _$SearchFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    Search<T>(
      position: json['position'] as int,
      results: (json['results'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$SearchToJson<T>(
  Search<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'position': instance.position,
      'results': instance.results.map(toJsonT).toList(),
    };

SearchAllResponse _$SearchAllResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SearchAllResponse',
      json,
      ($checkedConvert) {
        final val = SearchAllResponse(
          albums: $checkedConvert(
              'albums',
              (v) => Search<AlbumResponse>.fromJson(
                  v as Map<String, dynamic>,
                  (value) =>
                      AlbumResponse.fromJson(value as Map<String, dynamic>))),
          songs: $checkedConvert(
              'songs',
              (v) => Search<SongResponse>.fromJson(
                  v as Map<String, dynamic>,
                  (value) =>
                      SongResponse.fromJson(value as Map<String, dynamic>))),
          artists: $checkedConvert(
              'artists',
              (v) => Search<ArtistResponse>.fromJson(
                  v as Map<String, dynamic>,
                  (value) =>
                      ArtistResponse.fromJson(value as Map<String, dynamic>))),
          playlists: $checkedConvert(
              'playlists',
              (v) => Search<PlaylistResponse>.fromJson(
                  v as Map<String, dynamic>,
                  (value) => PlaylistResponse.fromJson(
                      value as Map<String, dynamic>))),
          topQuery: $checkedConvert(
              'topQuery',
              (v) => Search<TopQueryResponse>.fromJson(
                  v as Map<String, dynamic>,
                  (value) => TopQueryResponse.fromJson(
                      value as Map<String, dynamic>))),
        );
        return val;
      },
    );

Map<String, dynamic> _$SearchAllResponseToJson(SearchAllResponse instance) =>
    <String, dynamic>{
      'albums': instance.albums.toJson(
        (value) => value.toJson(),
      ),
      'songs': instance.songs.toJson(
        (value) => value.toJson(),
      ),
      'artists': instance.artists.toJson(
        (value) => value.toJson(),
      ),
      'playlists': instance.playlists.toJson(
        (value) => value.toJson(),
      ),
      'topQuery': instance.topQuery.toJson(
        (value) => value.toJson(),
      ),
    };

SongResponse _$SongResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SongResponse',
      json,
      ($checkedConvert) {
        final val = SongResponse(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          image: $checkedConvert(
              'image',
              (v) => (v as List<dynamic>)
                  .map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
                  .toList()),
          album: $checkedConvert('album', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          position: $checkedConvert('position', (v) => v as int),
          primaryArtists: $checkedConvert('primaryArtists', (v) => v as String),
          singers: $checkedConvert('singers', (v) => v as String),
          language: $checkedConvert('language', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$SongResponseToJson(SongResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image.map((e) => e.toJson()).toList(),
      'album': instance.album,
      'url': instance.url,
      'type': instance.type,
      'description': instance.description,
      'position': instance.position,
      'primaryArtists': instance.primaryArtists,
      'singers': instance.singers,
      'language': instance.language,
    };

AlbumResponse _$AlbumResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AlbumResponse',
      json,
      ($checkedConvert) {
        final val = AlbumResponse(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          image: $checkedConvert(
              'image',
              (v) => (v as List<dynamic>)
                  .map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
                  .toList()),
          artist: $checkedConvert('artist', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          position: $checkedConvert('position', (v) => v as int),
          year: $checkedConvert('year', (v) => v as String),
          language: $checkedConvert('language', (v) => v as String),
          songIds: $checkedConvert('songIds', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$AlbumResponseToJson(AlbumResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image.map((e) => e.toJson()).toList(),
      'artist': instance.artist,
      'url': instance.url,
      'type': instance.type,
      'description': instance.description,
      'position': instance.position,
      'year': instance.year,
      'language': instance.language,
      'songIds': instance.songIds,
    };

ArtistResponse _$ArtistResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ArtistResponse',
      json,
      ($checkedConvert) {
        final val = ArtistResponse(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          image: $checkedConvert(
              'image',
              (v) => (v as List<dynamic>)
                  .map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
                  .toList()),
          url: $checkedConvert('url', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          position: $checkedConvert('position', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$ArtistResponseToJson(ArtistResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image.map((e) => e.toJson()).toList(),
      'url': instance.url,
      'type': instance.type,
      'description': instance.description,
      'position': instance.position,
    };

PlaylistResponse _$PlaylistResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PlaylistResponse',
      json,
      ($checkedConvert) {
        final val = PlaylistResponse(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          image: $checkedConvert(
              'image',
              (v) => (v as List<dynamic>)
                  .map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
                  .toList()),
          url: $checkedConvert('url', (v) => v as String),
          language: $checkedConvert('language', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          position: $checkedConvert('position', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$PlaylistResponseToJson(PlaylistResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image.map((e) => e.toJson()).toList(),
      'url': instance.url,
      'language': instance.language,
      'type': instance.type,
      'description': instance.description,
      'position': instance.position,
    };

TopQueryResponse _$TopQueryResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TopQueryResponse',
      json,
      ($checkedConvert) {
        final val = TopQueryResponse(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          image: $checkedConvert(
              'image',
              (v) => (v as List<dynamic>)
                  .map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
                  .toList()),
          album: $checkedConvert('album', (v) => v as String?),
          url: $checkedConvert('url', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          position: $checkedConvert('position', (v) => v as int),
          primaryArtists:
              $checkedConvert('primaryArtists', (v) => v as String?),
          singers: $checkedConvert('singers', (v) => v as String?),
          language: $checkedConvert('language', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$TopQueryResponseToJson(TopQueryResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image.map((e) => e.toJson()).toList(),
      'album': instance.album,
      'url': instance.url,
      'type': instance.type,
      'description': instance.description,
      'position': instance.position,
      'primaryArtists': instance.primaryArtists,
      'singers': instance.singers,
      'language': instance.language,
    };
