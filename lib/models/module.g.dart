// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Module _$ModuleFromJson(Map<String, dynamic> json) => Module(
      albums: (json['albums'] as List<dynamic>?)
          ?.map((e) => Album.fromJson(e as Map<String, dynamic>))
          .toList(),
      playlists: (json['playlists'] as List<dynamic>?)
          ?.map((e) => Playlist.fromJson(e as Map<String, dynamic>))
          .toList(),
      charts: (json['charts'] as List<dynamic>?)
          ?.map((e) => Chart.fromJson(e as Map<String, dynamic>))
          .toList(),
      trending: json['trending'] == null
          ? null
          : Trending.fromJson(json['trending'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ModuleToJson(Module instance) => <String, dynamic>{
      'albums': instance.albums?.map((e) => e.toJson()).toList(),
      'playlists': instance.playlists?.map((e) => e.toJson()).toList(),
      'charts': instance.charts?.map((e) => e.toJson()).toList(),
      'trending': instance.trending?.toJson(),
    };
