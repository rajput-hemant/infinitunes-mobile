import 'package:json_annotation/json_annotation.dart';

part 'artist.g.dart';

@JsonSerializable()
class Artist {
  String id;
  String? name;
  String? url;
  // List<DownloadUrl>? image; // it can be either List<DownloadUrl> bool
  String? followerCount;
  String? fanCount;
  bool? isVerified;
  String? dominantLanguage;
  String? dominantType;
  String? dob;
  String? fb;
  String? twitter;
  String? wiki;
  List<String>? availableLanguages;
  bool? isRadioPresent;

  Artist({
    required this.id,
    this.name,
    this.url,
    // this.image,
    this.followerCount,
    this.fanCount,
    this.isVerified,
    this.dominantLanguage,
    this.dominantType,
    this.dob,
    this.fb,
    this.twitter,
    this.wiki,
    this.availableLanguages,
    this.isRadioPresent,
  });

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistToJson(this);
}
