// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Song _$SongFromJson(Map<String, dynamic> json) => Song(
      id: json['id'] as String,
      name: json['name'] as String?,
      type: json['type'] as String?,
      album: json['album'] == null
          ? null
          : Album.fromJson(json['album'] as Map<String, dynamic>),
      year: json['year'] as String?,
      releaseDate: json['releaseDate'] as String?,
      duration: json['duration'] as String?,
      label: json['label'] as String?,
      primaryArtists: json['primaryArtists'] as String?,
      primaryArtistsId: json['primaryArtistsId'] as String?,
      featuredArtists: json['featuredArtists'] as String?,
      featuredArtistsId: json['featuredArtistsId'] as String?,
      explicitContent: json['explicitContent'] as int?,
      language: json['language'] as String?,
      hasLyrics: json['hasLyrics'] as String?,
      url: json['url'] as String?,
      copyright: json['copyright'] as String?,
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => DownloadUrl.fromJson(e as Map<String, dynamic>))
          .toList(),
      downloadUrl: (json['downloadUrl'] as List<dynamic>?)
          ?.map((e) => DownloadUrl.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SongToJson(Song instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'album': instance.album?.toJson(),
      'year': instance.year,
      'releaseDate': instance.releaseDate,
      'duration': instance.duration,
      'label': instance.label,
      'primaryArtists': instance.primaryArtists,
      'primaryArtistsId': instance.primaryArtistsId,
      'featuredArtists': instance.featuredArtists,
      'featuredArtistsId': instance.featuredArtistsId,
      'explicitContent': instance.explicitContent,
      'language': instance.language,
      'hasLyrics': instance.hasLyrics,
      'url': instance.url,
      'copyright': instance.copyright,
      'image': instance.image?.map((e) => e.toJson()).toList(),
      'downloadUrl': instance.downloadUrl?.map((e) => e.toJson()).toList(),
    };
