// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Album _$AlbumFromJson(Map<String, dynamic> json) => Album(
      id: json['id'] as String,
      name: json['name'] as String?,
      type: json['type'] as String?,
      year: json['year'] as String?,
      releaseDate: json['releaseDate'] as String?,
      playCount: json['playCount'] as String?,
      language: json['language'] as String?,
      explicitContent: json['explicitContent'] as String?,
      songCount: json['songCount'] as String?,
      url: json['url'] as String?,
      primaryArtistsId: json['primaryArtistsId'] as String?,
      featuredArtists: (json['featuredArtists'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => DownloadUrl.fromJson(e as Map<String, dynamic>))
          .toList(),
      songs: (json['songs'] as List<dynamic>?)
          ?.map((e) => Song.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AlbumToJson(Album instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'year': instance.year,
      'releaseDate': instance.releaseDate,
      'playCount': instance.playCount,
      'language': instance.language,
      'explicitContent': instance.explicitContent,
      'songCount': instance.songCount,
      'url': instance.url,
      'primaryArtistsId': instance.primaryArtistsId,
      'featuredArtists':
          instance.featuredArtists?.map((e) => e.toJson()).toList(),
      'artists': instance.artists?.map((e) => e.toJson()).toList(),
      'image': instance.image?.map((e) => e.toJson()).toList(),
      'songs': instance.songs?.map((e) => e.toJson()).toList(),
    };
