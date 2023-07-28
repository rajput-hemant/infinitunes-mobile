// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chart _$ChartFromJson(Map<String, dynamic> json) => Chart(
      id: json['id'] as String,
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      type: json['type'] as String?,
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => DownloadUrl.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String?,
      firstname: json['firstname'] as String?,
      explicitContent: json['explicitContent'] as String?,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$ChartToJson(Chart instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'type': instance.type,
      'image': instance.image?.map((e) => e.toJson()).toList(),
      'url': instance.url,
      'firstname': instance.firstname,
      'explicitContent': instance.explicitContent,
      'language': instance.language,
    };
