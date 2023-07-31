// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lyrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lyrics _$LyricsFromJson(Map<String, dynamic> json) => Lyrics(
      lyrics: json['lyrics'] as String,
      snippet: json['snippet'] as String,
      copyright: json['copyright'] as String,
    );

Map<String, dynamic> _$LyricsToJson(Lyrics instance) => <String, dynamic>{
      'lyrics': instance.lyrics,
      'copyright': instance.copyright,
      'snippet': instance.snippet,
    };
