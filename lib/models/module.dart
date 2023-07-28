import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'module.g.dart';

@JsonSerializable(explicitToJson: true)
class Module {
  List<Album>? albums;
  List<Playlist>? playlists;
  List<Chart>? charts;
  Trending? trending;

  Module({
    this.albums,
    this.playlists,
    this.charts,
    this.trending,
  });

  factory Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);

  Map<String, dynamic> toJson() => _$ModuleToJson(this);
}
