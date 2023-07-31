// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Response<T> _$ResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    Response<T>(
      status: json['status'] as String,
      message: json['message'] as String?,
      data: fromJsonT(json['data']),
    );

Map<String, dynamic> _$ResponseToJson<T>(
  Response<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': toJsonT(instance.data),
    };

SearchResponse<T> _$SearchResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    SearchResponse<T>(
      total: json['total'] as int,
      start: json['start'] as int?,
      lastPage: json['lastPage'] as bool?,
      results: (json['results'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$SearchResponseToJson<T>(
  SearchResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'total': instance.total,
      'start': instance.start,
      'lastPage': instance.lastPage,
      'results': instance.results.map(toJsonT).toList(),
    };
