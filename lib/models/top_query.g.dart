// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopQuery _$TopQueryFromJson(Map<String, dynamic> json) => TopQuery(
      id: json['id'] as String,
      title: json['title'] as String?,
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => DownloadUrl.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String?,
      type: json['type'] as String?,
      description: json['description'] as String?,
      position: json['position'] as int?,
    );

Map<String, dynamic> _$TopQueryToJson(TopQuery instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image?.map((e) => e.toJson()).toList(),
      'url': instance.url,
      'type': instance.type,
      'description': instance.description,
      'position': instance.position,
    };
