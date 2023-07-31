// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Artist _$ArtistFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Artist',
      json,
      ($checkedConvert) {
        final val = Artist(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          role: $checkedConvert('role', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String?),
          url: $checkedConvert('url', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$ArtistToJson(Artist instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': instance.role,
      'type': instance.type,
      'url': instance.url,
    };

ArtistFull _$ArtistFullFromJson(Map<String, dynamic> json) => $checkedCreate(
      'ArtistFull',
      json,
      ($checkedConvert) {
        final val = ArtistFull(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          role: $checkedConvert('role', (v) => v as String?),
          image: $checkedConvert(
              'image',
              (v) => (v as List<dynamic>)
                  .map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
                  .toList()),
          followerCount: $checkedConvert('followerCount', (v) => v as String),
          fanCount: $checkedConvert('fanCount', (v) => v as String),
          isVerified: $checkedConvert('isVerified', (v) => v as bool),
          dob: $checkedConvert('dob', (v) => v as String),
          fb: $checkedConvert('fb', (v) => v as String),
          twitter: $checkedConvert('twitter', (v) => v as String),
          wiki: $checkedConvert('wiki', (v) => v as String),
          availableLanguages: $checkedConvert('availableLanguages',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          isRadioPresent: $checkedConvert('isRadioPresent', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$ArtistFullToJson(ArtistFull instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'role': instance.role,
      'image': instance.image.map((e) => e.toJson()).toList(),
      'followerCount': instance.followerCount,
      'fanCount': instance.fanCount,
      'isVerified': instance.isVerified,
      'dob': instance.dob,
      'fb': instance.fb,
      'twitter': instance.twitter,
      'wiki': instance.wiki,
      'availableLanguages': instance.availableLanguages,
      'isRadioPresent': instance.isRadioPresent,
    };
