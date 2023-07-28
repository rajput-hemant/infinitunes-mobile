// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Playlist _$PlaylistFromJson(Map<String, dynamic> json) => Playlist(
      id: json['id'] as String,
      userId: json['userId'] as String?,
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      type: json['type'] as String?,
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => DownloadUrl.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String?,
      songCount: json['songCount'] as String?,
      firstname: json['firstname'] as String?,
      followerCount: json['followerCount'] as String?,
      lastUpdated: json['lastUpdated'] as String?,
      explicitContent: json['explicitContent'] as String?,
      songs: (json['songs'] as List<dynamic>?)
          ?.map((e) => Song.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlaylistToJson(Playlist instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'type': instance.type,
      'image': instance.image?.map((e) => e.toJson()).toList(),
      'url': instance.url,
      'songCount': instance.songCount,
      'firstname': instance.firstname,
      'followerCount': instance.followerCount,
      'lastUpdated': instance.lastUpdated,
      'explicitContent': instance.explicitContent,
      'songs': instance.songs?.map((e) => e.toJson()).toList(),
    };
