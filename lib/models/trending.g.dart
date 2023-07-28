// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trending _$TrendingFromJson(Map<String, dynamic> json) => Trending(
      songs: (json['songs'] as List<dynamic>)
          .map((e) => Album.fromJson(e as Map<String, dynamic>))
          .toList(),
      albums: (json['albums'] as List<dynamic>)
          .map((e) => Album.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TrendingToJson(Trending instance) => <String, dynamic>{
      'songs': instance.songs.map((e) => e.toJson()).toList(),
      'albums': instance.albums.map((e) => e.toJson()).toList(),
    };
