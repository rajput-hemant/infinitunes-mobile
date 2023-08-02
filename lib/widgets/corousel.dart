import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/screens.dart';
import '../utils/extensions.dart';
import 'cached_image.dart';

class CorouselItem {
  CorouselItem({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.type,
  });

  final String id, title, subtitle, imageUrl, type;
}

class Corousel extends StatelessWidget {
  const Corousel({
    super.key,
    required this.heading,
    required this.item,
  });

  final String heading;
  final List<CorouselItem> item;

  @override
  Widget build(BuildContext context) {
    // print html encode string
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            heading,
            style: GoogleFonts.montserrat(fontSize: 20),
          ),
        ),
        SizedBox(
          height: 210,
          child: ListView.builder(
            // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //   crossAxisCount: 2,
            //   childAspectRatio: 1.4,
            // ),
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: item.length,
            itemBuilder: (context, i) {
              return InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  if (item[i].type == 'album') {
                    Navigator.pushNamed(
                      context,
                      Routes.albumScreen,
                      arguments: item[i].id,
                    );
                  } else if (item[i].type == 'playlist') {
                    Navigator.pushNamed(
                      context,
                      Routes.playlistScreen,
                      arguments: item[i].id,
                    );
                  }
                },
                child: Container(
                  width: 160,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CachedImage(
                        imageUrl: item[i].imageUrl,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          item[i].title.unescapeHtml(),
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "${item[i].type.capitalize()} · ${item[i].subtitle.unescapeHtml()}",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
