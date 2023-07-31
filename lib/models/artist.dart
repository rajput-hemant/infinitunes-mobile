import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'artist.g.dart';

@JsonSerializable(explicitToJson: true, checked: true)
class Artist {
  final String id;
  final String name;
  final String role;
  final String? type;
  final String url;

  Artist({
    required this.id,
    required this.name,
    required this.role,
    required this.type,
    required this.url,
  });

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class ArtistFull {
  final String id;
  final String name;
  final String url;
  final String? role;
  final List<DownloadLink> image;
  final String followerCount;
  final String fanCount;
  final bool isVerified;
  final String dob;
  final String fb;
  final String twitter;
  final String wiki;
  final List<String> availableLanguages;
  final bool isRadioPresent;

  ArtistFull({
    required this.id,
    required this.name,
    required this.url,
    required this.role,
    required this.image,
    required this.followerCount,
    required this.fanCount,
    required this.isVerified,
    required this.dob,
    required this.fb,
    required this.twitter,
    required this.wiki,
    required this.availableLanguages,
    required this.isRadioPresent,
  });

  factory ArtistFull.fromJson(Map<String, dynamic> json) =>
      _$ArtistFullFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistFullToJson(this);
}
