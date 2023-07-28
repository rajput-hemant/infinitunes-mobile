// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Artist _$ArtistFromJson(Map<String, dynamic> json) => Artist(
      id: json['id'] as String,
      name: json['name'] as String?,
      url: json['url'] as String?,
      followerCount: json['followerCount'] as String?,
      fanCount: json['fanCount'] as String?,
      isVerified: json['isVerified'] as bool?,
      dominantLanguage: json['dominantLanguage'] as String?,
      dominantType: json['dominantType'] as String?,
      dob: json['dob'] as String?,
      fb: json['fb'] as String?,
      twitter: json['twitter'] as String?,
      wiki: json['wiki'] as String?,
      availableLanguages: (json['availableLanguages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isRadioPresent: json['isRadioPresent'] as bool?,
    );

Map<String, dynamic> _$ArtistToJson(Artist instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'followerCount': instance.followerCount,
      'fanCount': instance.fanCount,
      'isVerified': instance.isVerified,
      'dominantLanguage': instance.dominantLanguage,
      'dominantType': instance.dominantType,
      'dob': instance.dob,
      'fb': instance.fb,
      'twitter': instance.twitter,
      'wiki': instance.wiki,
      'availableLanguages': instance.availableLanguages,
      'isRadioPresent': instance.isRadioPresent,
    };
