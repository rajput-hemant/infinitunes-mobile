import 'package:flutter/material.dart';

import '../models/models.dart';
import 'song_tile.dart';

class SongList extends StatelessWidget {
  const SongList({
    super.key,
    required this.songs,
  });

  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: songs.length,
      itemBuilder: (ctx, i) {
        return SongTile(song: songs[i]);
      },
    );
  }
}

class ReorderableSongTile extends StatefulWidget {
  const ReorderableSongTile({
    super.key,
    required this.songs,
  });

  final List<Song> songs;

  @override
  State<ReorderableSongTile> createState() => _ReorderableSongTileState();
}

class _ReorderableSongTileState extends State<ReorderableSongTile> {
  @override
  Widget build(BuildContext context) {
    return ReorderableListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: widget.songs.length,
      onReorder: (oldIdx, newIdx) {
        setState(() {
          if (newIdx > oldIdx) newIdx -= 1;
          final item = widget.songs.removeAt(oldIdx);
          widget.songs.insert(newIdx, item);
        });
      },
      itemBuilder: (ctx, i) {
        return Dismissible(
          key: ValueKey(widget.songs[i].id),
          onDismissed: (direction) {
            setState(() {
              widget.songs.removeAt(i);
            });
          },
          child: SongTile(song: widget.songs[i]),
        );
      },
    );
  }
}
