import 'package:flutter/material.dart';

import '../api/jio_saavn.dart';
import '../utils/extensions.dart';
import '../widgets/cached_image.dart';
import '../widgets/song_list.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({
    super.key,
    required this.id,
  });

  final String id;

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  String getFollowerCount(String? followers) {
    if (followers == null) {
      return "N/A";
    } else if (followers == "1") {
      return "1 Follower";
    } else {
      return "${followers.formatNumber()} Followers";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infinitunes'),
      ),
      body: FutureBuilder(
        future: api.getAlbumDetails(widget.id),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
                textAlign: TextAlign.center,
              ),
            );
          } else if (!snapshot.hasData) {
            return const Center(
              child: Text("No data found"),
            );
          }

          final album = snapshot.data!;

          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox.square(
                  dimension: 250,
                  child: CachedImage(
                    imageUrl: album.image[2].link,
                  ),
                ),
                Text(album.name.unescapeHtml()),
                Text(
                  "${album.songCount} ${album.songCount == "1" ? "Song" : "Songs"}",
                ),
                Text(
                  "${album.type ?? "Album"} · ${album.primaryArtists}",
                  overflow: TextOverflow.ellipsis,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: SongList(songs: album.songs),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
