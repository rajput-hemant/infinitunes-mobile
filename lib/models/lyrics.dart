import 'package:json_annotation/json_annotation.dart';

part 'lyrics.g.dart';

@JsonSerializable()
class Lyrics {
  final String lyrics;
  final String copyright;
  final String snippet;

  Lyrics({
    required this.lyrics,
    required this.snippet,
    required this.copyright,
  });

  factory Lyrics.fromJson(Map<String, dynamic> json) => _$LyricsFromJson(json);

  Map<String, dynamic> toJson() => _$LyricsToJson(this);
}
