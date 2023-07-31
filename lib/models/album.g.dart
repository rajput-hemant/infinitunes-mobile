// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Album _$AlbumFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Album',
      json,
      ($checkedConvert) {
        final val = Album(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          year: $checkedConvert('year', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String?),
          playCount: $checkedConvert('playCount', (v) => v as String?),
          language: $checkedConvert('language', (v) => v as String?),
          explicitContent:
              $checkedConvert('explicitContent', (v) => v as String?),
          primaryArtistsId:
              $checkedConvert('primaryArtistsId', (v) => v as String?),
          primaryArtists: $checkedConvert('primaryArtists', (v) => v),
          artists: $checkedConvert(
              'artists',
              (v) => (v as List<dynamic>)
                  .map((e) => Artist.fromJson(e as Map<String, dynamic>))
                  .toList()),
          featuredArtists: $checkedConvert(
              'featuredArtists',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
                  .toList()),
          songCount: $checkedConvert('songCount', (v) => v as String),
          releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
          image: $checkedConvert(
              'image',
              (v) => (v as List<dynamic>)
                  .map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
                  .toList()),
          url: $checkedConvert('url', (v) => v as String),
          songs: $checkedConvert(
              'songs',
              (v) => (v as List<dynamic>)
                  .map((e) => Song.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$AlbumToJson(Album instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'year': instance.year,
      'type': instance.type,
      'playCount': instance.playCount,
      'language': instance.language,
      'explicitContent': instance.explicitContent,
      'primaryArtistsId': instance.primaryArtistsId,
      'primaryArtists': instance.primaryArtists,
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'featuredArtists':
          instance.featuredArtists?.map((e) => e.toJson()).toList(),
      'songCount': instance.songCount,
      'releaseDate': instance.releaseDate,
      'image': instance.image.map((e) => e.toJson()).toList(),
      'url': instance.url,
      'songs': instance.songs.map((e) => e.toJson()).toList(),
    };
