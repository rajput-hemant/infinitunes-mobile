import 'package:flutter/material.dart';

import '../api/jio_saavn.dart';
import '../models/models.dart';
import '../widgets/corousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  List<CorouselItem> getTrending(Trending? trending) {
    return [
      ...trending?.albums.map(
            (item) {
              return CorouselItem(
                id: item.id,
                type: item.type,
                title: item.name,
                subtitle: item.artists.map((a) => a.name).join(", "),
                imageUrl: item.image[2].link,
              );
            },
          ) ??
          [],
      ...trending?.songs.map(
            (item) {
              return CorouselItem(
                id: item.id,
                type: item.type,
                title: item.name,
                subtitle: (item.primaryArtists as List)
                    .map((a) => a["name"])
                    .join(', '),
                imageUrl: item.image[2].link,
              );
            },
          ) ??
          [],
    ];
  }

  List<CorouselItem> getAlbums(List<ModuleAlbum>? albums) {
    return albums?.map(
          (item) {
            return CorouselItem(
              id: item.id,
              type: item.type,
              title: item.name,
              subtitle: item.artists.map((a) => a.name).join(", "),
              imageUrl: item.image[2].link,
            );
          },
        ).toList() ??
        [];
  }

  List<CorouselItem> getTopCharts(List<ModuleChart>? topCharts) {
    return topCharts?.map(
          (item) {
            return CorouselItem(
              id: item.id,
              type: item.type,
              title: item.title,
              subtitle: item.subtitle,
              imageUrl: item.image[0].link,
            );
          },
        ).toList() ??
        [];
  }

  List<CorouselItem> getPlaylists(List<ModulePlaylist>? playlists) {
    return playlists?.map(
          (item) {
            return CorouselItem(
              id: item.id,
              type: item.type,
              title: item.title,
              subtitle: item.subtitle,
              imageUrl: item.image[0].link,
            );
          },
        ).toList() ??
        [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infinitunes'),
      ),
      body: FutureBuilder(
        future: api.getHomeData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            // padding: const EdgeInsets.symmetric(vertical: 10),
            children: [
              Corousel(
                heading: "Trending Now",
                item: getTrending(snapshot.data?.trending),
              ),
              Corousel(
                heading: "New Releases",
                item: getAlbums(snapshot.data?.albums),
              ),
              Corousel(
                heading: "Top Playlists",
                item: getPlaylists(snapshot.data?.playlists),
              ),
              Corousel(
                heading: "Top Charts",
                item: getTopCharts(snapshot.data?.charts),
              ),
            ],
          );
        },
      ),
    );
  }
}
