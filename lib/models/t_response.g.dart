// GENERATED CODE - DO NOT MODIFY BY HAND

part of 't_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TResponse<T> _$TResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    TResponse<T>(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: fromJsonT(json['data']),
    );

Map<String, dynamic> _$TResponseToJson<T>(
  TResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': toJsonT(instance.data),
    };

TSearchResponse<T> _$TSearchResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    TSearchResponse<T>(
      total: json['total'] as int?,
      start: json['start'] as int?,
      results: (json['results'] as List<dynamic>).map(fromJsonT).toList(),
    )..lastPage = json['lastPage'] as bool?;

Map<String, dynamic> _$TSearchResponseToJson<T>(
  TSearchResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'total': instance.total,
      'start': instance.start,
      'lastPage': instance.lastPage,
      'results': instance.results.map(toJsonT).toList(),
    };

SearchResult<T> _$SearchResultFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    SearchResult<T>(
      results: (json['results'] as List<dynamic>?)?.map(fromJsonT).toList(),
      position: json['position'] as int?,
    );

Map<String, dynamic> _$SearchResultToJson<T>(
  SearchResult<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'results': instance.results?.map(toJsonT).toList(),
      'position': instance.position,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      id: json['id'] as String,
      title: json['title'] as String?,
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => DownloadUrl.fromJson(e as Map<String, dynamic>))
          .toList(),
      album: json['album'] as String?,
      url: json['url'] as String?,
      type: json['type'] as String?,
      language: json['language'] as String?,
      description: json['description'] as String?,
      position: json['position'] as int?,
      primaryArtists: json['primaryArtists'] as String?,
      singers: json['singers'] as String?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'type': instance.type,
      'album': instance.album,
      'singers': instance.singers,
      'language': instance.language,
      'description': instance.description,
      'primaryArtists': instance.primaryArtists,
      'image': instance.image?.map((e) => e.toJson()).toList(),
      'position': instance.position,
    };
