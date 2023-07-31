import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class Response<T> {
  final String status;
  final String? message;
  final T data;

  Response({
    required this.status,
    required this.message,
    required this.data,
  });

  factory Response.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$ResponseToJson(this, toJsonT);
}

@JsonSerializable(genericArgumentFactories: true)
class SearchResponse<T> {
  final int total;
  final int? start;
  final bool? lastPage;
  final List<T> results;

  SearchResponse({
    required this.total,
    required this.start,
    required this.lastPage,
    required this.results,
  });

  factory SearchResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$SearchResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$SearchResponseToJson(this, toJsonT);
}
