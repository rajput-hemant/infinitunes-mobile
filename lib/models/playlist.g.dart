// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Playlist _$PlaylistFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Playlist',
      json,
      ($checkedConvert) {
        final val = Playlist(
          id: $checkedConvert('id', (v) => v as String),
          userId: $checkedConvert('userId', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          songCount: $checkedConvert('songCount', (v) => v as String),
          fanCount: $checkedConvert('fanCount', (v) => v as String?),
          followerCount: $checkedConvert('followerCount', (v) => v as String?),
          username: $checkedConvert('username', (v) => v as String),
          firstname: $checkedConvert('firstname', (v) => v as String),
          lastname: $checkedConvert('lastname', (v) => v as String),
          language: $checkedConvert('language', (v) => v as String?),
          shares: $checkedConvert('shares', (v) => v as String?),
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

Map<String, dynamic> _$PlaylistToJson(Playlist instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'name': instance.name,
      'songCount': instance.songCount,
      'fanCount': instance.fanCount,
      'followerCount': instance.followerCount,
      'username': instance.username,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'language': instance.language,
      'shares': instance.shares,
      'image': instance.image.map((e) => e.toJson()).toList(),
      'url': instance.url,
      'songs': instance.songs.map((e) => e.toJson()).toList(),
    };
