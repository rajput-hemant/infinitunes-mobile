import 'package:flutter/material.dart';

import '../models/models.dart';
import '../utils/extensions.dart';
import 'cached_image.dart';

class SongTile extends StatelessWidget {
  const SongTile({
    super.key,
    required this.song,
  });

  final Song song;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      leading: CachedImage(
        imageUrl: song.image[1].link,
        dimension: 50,
        borderRadius: 5,
      ),
      title: Text(
        song.name.unescapeHtml(),
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        song.primaryArtists,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
