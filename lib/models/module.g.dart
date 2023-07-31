// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Module _$ModuleFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Module',
      json,
      ($checkedConvert) {
        final val = Module(
          albums: $checkedConvert(
              'albums',
              (v) => (v as List<dynamic>)
                  .map((e) => ModuleAlbum.fromJson(e as Map<String, dynamic>))
                  .toList()),
          playlists: $checkedConvert(
              'playlists',
              (v) => (v as List<dynamic>)
                  .map(
                      (e) => ModulePlaylist.fromJson(e as Map<String, dynamic>))
                  .toList()),
          charts: $checkedConvert(
              'charts',
              (v) => (v as List<dynamic>)
                  .map((e) => ModuleChart.fromJson(e as Map<String, dynamic>))
                  .toList()),
          trending: $checkedConvert(
              'trending', (v) => Trending.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$ModuleToJson(Module instance) => <String, dynamic>{
      'albums': instance.albums.map((e) => e.toJson()).toList(),
      'playlists': instance.playlists.map((e) => e.toJson()).toList(),
      'charts': instance.charts.map((e) => e.toJson()).toList(),
      'trending': instance.trending.toJson(),
    };

ModulePlaylist _$ModulePlaylistFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ModulePlaylist',
      json,
      ($checkedConvert) {
        final val = ModulePlaylist(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          subtitle: $checkedConvert('subtitle', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          image: $checkedConvert(
              'image',
              (v) => (v as List<dynamic>)
                  .map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
                  .toList()),
          url: $checkedConvert('url', (v) => v as String),
          songCount: $checkedConvert('songCount', (v) => v as String),
          firstname: $checkedConvert('firstname', (v) => v as String),
          followerCount: $checkedConvert('followerCount', (v) => v as String),
          lastUpdated: $checkedConvert('lastUpdated', (v) => v as String),
          userId: $checkedConvert('userId', (v) => v as String),
          explicitContent:
              $checkedConvert('explicitContent', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$ModulePlaylistToJson(ModulePlaylist instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'type': instance.type,
      'image': instance.image.map((e) => e.toJson()).toList(),
      'url': instance.url,
      'songCount': instance.songCount,
      'firstname': instance.firstname,
      'followerCount': instance.followerCount,
      'lastUpdated': instance.lastUpdated,
      'userId': instance.userId,
      'explicitContent': instance.explicitContent,
    };

ModuleChart _$ModuleChartFromJson(Map<String, dynamic> json) => $checkedCreate(
      'ModuleChart',
      json,
      ($checkedConvert) {
        final val = ModuleChart(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          subtitle: $checkedConvert('subtitle', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          image: $checkedConvert(
              'image',
              (v) => (v as List<dynamic>)
                  .map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
                  .toList()),
          url: $checkedConvert('url', (v) => v as String),
          firstname: $checkedConvert('firstname', (v) => v as String),
          explicitContent:
              $checkedConvert('explicitContent', (v) => v as String),
          language: $checkedConvert('language', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$ModuleChartToJson(ModuleChart instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'type': instance.type,
      'image': instance.image.map((e) => e.toJson()).toList(),
      'url': instance.url,
      'firstname': instance.firstname,
      'explicitContent': instance.explicitContent,
      'language': instance.language,
    };

Trending _$TrendingFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Trending',
      json,
      ($checkedConvert) {
        final val = Trending(
          albums: $checkedConvert(
              'albums',
              (v) => (v as List<dynamic>)
                  .map((e) => ModuleAlbum.fromJson(e as Map<String, dynamic>))
                  .toList()),
          songs: $checkedConvert(
              'songs',
              (v) => (v as List<dynamic>)
                  .map((e) => ModuleSong.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$TrendingToJson(Trending instance) => <String, dynamic>{
      'albums': instance.albums.map((e) => e.toJson()).toList(),
      'songs': instance.songs.map((e) => e.toJson()).toList(),
    };

ModuleAlbum _$ModuleAlbumFromJson(Map<String, dynamic> json) => $checkedCreate(
      'ModuleAlbum',
      json,
      ($checkedConvert) {
        final val = ModuleAlbum(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          year: $checkedConvert('year', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          playCount: $checkedConvert('playCount', (v) => v as String),
          language: $checkedConvert('language', (v) => v as String),
          explicitContent:
              $checkedConvert('explicitContent', (v) => v as String),
          primaryArtists: $checkedConvert(
              'primaryArtists',
              (v) => (v as List<dynamic>)
                  .map((e) => Artist.fromJson(e as Map<String, dynamic>))
                  .toList()),
          featuredArtists: $checkedConvert(
              'featuredArtists',
              (v) => (v as List<dynamic>)
                  .map((e) => Artist.fromJson(e as Map<String, dynamic>))
                  .toList()),
          artists: $checkedConvert(
              'artists',
              (v) => (v as List<dynamic>)
                  .map((e) => Artist.fromJson(e as Map<String, dynamic>))
                  .toList()),
          songCount: $checkedConvert('songCount', (v) => v as String?),
          image: $checkedConvert(
              'image',
              (v) => (v as List<dynamic>)
                  .map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
                  .toList()),
          url: $checkedConvert('url', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$ModuleAlbumToJson(ModuleAlbum instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'year': instance.year,
      'type': instance.type,
      'playCount': instance.playCount,
      'language': instance.language,
      'explicitContent': instance.explicitContent,
      'primaryArtists': instance.primaryArtists.map((e) => e.toJson()).toList(),
      'featuredArtists':
          instance.featuredArtists.map((e) => e.toJson()).toList(),
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'songCount': instance.songCount,
      'image': instance.image.map((e) => e.toJson()).toList(),
      'url': instance.url,
    };

ModuleSong _$ModuleSongFromJson(Map<String, dynamic> json) => $checkedCreate(
      'ModuleSong',
      json,
      ($checkedConvert) {
        final val = ModuleSong(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          album: $checkedConvert(
              'album', (v) => SongAlbum.fromJson(v as Map<String, dynamic>)),
          year: $checkedConvert('year', (v) => v as String),
          releaseDate: $checkedConvert('releaseDate', (v) => v as String),
          duration: $checkedConvert('duration', (v) => v as String),
          label: $checkedConvert('label', (v) => v as String),
          primaryArtists: $checkedConvert('primaryArtists', (v) => v),
          featuredArtists: $checkedConvert('featuredArtists', (v) => v),
          explicitContent:
              $checkedConvert('explicitContent', (v) => v as String),
          playCount: $checkedConvert('playCount', (v) => v as String),
          language: $checkedConvert('language', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          image: $checkedConvert(
              'image',
              (v) => (v as List<dynamic>)
                  .map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ModuleSongToJson(ModuleSong instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'album': instance.album.toJson(),
      'year': instance.year,
      'releaseDate': instance.releaseDate,
      'duration': instance.duration,
      'label': instance.label,
      'primaryArtists': instance.primaryArtists,
      'featuredArtists': instance.featuredArtists,
      'explicitContent': instance.explicitContent,
      'playCount': instance.playCount,
      'language': instance.language,
      'url': instance.url,
      'image': instance.image.map((e) => e.toJson()).toList(),
    };
