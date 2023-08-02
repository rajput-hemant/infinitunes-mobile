import 'package:flutter/material.dart';

import '../api/jio_saavn.dart';
import '../utils/extensions.dart';
import '../widgets/cached_image.dart';
import '../widgets/song_list.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({
    super.key,
    required this.id,
  });

  final String id;

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
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
        future: api.getPlaylistDetails(widget.id),
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

          final playlist = snapshot.data!;

          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox.square(
                  dimension: 250,
                  child: CachedImage(
                    imageUrl: playlist.image[0].link,
                  ),
                ),
                Text(playlist.name.unescapeHtml()),
                Text(
                  "${playlist.songCount} ${playlist.songCount == "1" ? "Song" : "Songs"}",
                ),
                Text(
                  "Playlist · ${getFollowerCount(playlist.followerCount)}",
                  overflow: TextOverflow.ellipsis,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: SongList(songs: playlist.songs),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
