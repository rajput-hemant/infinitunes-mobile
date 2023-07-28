import 'package:json_annotation/json_annotation.dart';

import 'download_url.dart';

part 't_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class TResponse<T> {
  String? status;
  String? message;
  T data;

  TResponse({this.status, this.message, required this.data});

  factory TResponse.fromJson(
          Map<String, dynamic> data, T Function(Object? json) fromJsonT) =>
      _$TResponseFromJson(data, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$TResponseToJson(this, toJsonT);
}

@JsonSerializable(genericArgumentFactories: true)
class TSearchResponse<T> {
  int? total;
  int? start;
  bool? lastPage;
  List<T> results;

  TSearchResponse({this.total, this.start, required this.results});

  factory TSearchResponse.fromJson(
          Map<String, dynamic> data, T Function(Object? json) fromJsonT) =>
      _$TSearchResponseFromJson(data, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$TSearchResponseToJson(this, toJsonT);
}

@JsonSerializable(genericArgumentFactories: true)
class SearchResult<T> {
  List<T>? results;
  int? position;

  SearchResult({
    this.results,
    this.position,
  });

  factory SearchResult.fromJson(
          Map<String, dynamic> data, T Function(Object? json) fromJsonT) =>
      _$SearchResultFromJson(data, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$SearchResultToJson(this, toJsonT);
}

@JsonSerializable(explicitToJson: true)
class Result {
  String id;
  String? title;
  String? url;
  String? type;
  String? album;
  String? singers;
  String? language;
  String? description;
  String? primaryArtists;
  List<DownloadUrl>? image;
  int? position;

  Result({
    required this.id,
    this.title,
    this.image,
    this.album,
    this.url,
    this.type,
    this.language,
    this.description,
    this.position,
    this.primaryArtists,
    this.singers,
  });

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
