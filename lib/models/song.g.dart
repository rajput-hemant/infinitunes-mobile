// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Song _$SongFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Song',
      json,
      ($checkedConvert) {
        final val = Song(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          album: $checkedConvert(
              'album', (v) => SongAlbum.fromJson(v as Map<String, dynamic>)),
          year: $checkedConvert('year', (v) => v as String),
          releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
          duration: $checkedConvert('duration', (v) => v as String),
          label: $checkedConvert('label', (v) => v as String),
          primaryArtists: $checkedConvert('primaryArtists', (v) => v as String),
          primaryArtistsId:
              $checkedConvert('primaryArtistsId', (v) => v as String),
          featuredArtists:
              $checkedConvert('featuredArtists', (v) => v as String),
          featuredArtistsId:
              $checkedConvert('featuredArtistsId', (v) => v as String),
          explicitContent: $checkedConvert('explicitContent', (v) => v),
          playCount: $checkedConvert('playCount', (v) => v),
          language: $checkedConvert('language', (v) => v as String),
          hasLyrics: $checkedConvert('hasLyrics', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          image: $checkedConvert(
              'image',
              (v) => (v as List<dynamic>)
                  .map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
                  .toList()),
          downloadUrl: $checkedConvert(
              'downloadUrl',
              (v) => (v as List<dynamic>)
                  .map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
                  .toList()),
          copyright: $checkedConvert('copyright', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$SongToJson(Song instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'album': instance.album.toJson(),
      'year': instance.year,
      'releaseDate': instance.releaseDate,
      'duration': instance.duration,
      'label': instance.label,
      'primaryArtists': instance.primaryArtists,
      'featuredArtists': instance.featuredArtists,
      'primaryArtistsId': instance.primaryArtistsId,
      'featuredArtistsId': instance.featuredArtistsId,
      'explicitContent': instance.explicitContent,
      'playCount': instance.playCount,
      'language': instance.language,
      'hasLyrics': instance.hasLyrics,
      'url': instance.url,
      'copyright': instance.copyright,
      'image': instance.image.map((e) => e.toJson()).toList(),
      'downloadUrl': instance.downloadUrl.map((e) => e.toJson()).toList(),
    };

SongAlbum _$SongAlbumFromJson(Map<String, dynamic> json) => $checkedCreate(
      'SongAlbum',
      json,
      ($checkedConvert) {
        final val = SongAlbum(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$SongAlbumToJson(SongAlbum instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
    };
