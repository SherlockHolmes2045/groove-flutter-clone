import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:photos/widgets/album_item.dart';

import '../model/album.dart';

class AlbumPage extends StatelessWidget {
  const AlbumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Album> albums = [
      Album(name: 'Awakening',artist: 'Hiroshi Sato'),
      Album(name: 'Awakening',artist: 'Hiroshi Sato',cover: "https://m.media-amazon.com/images/I/610SNLkeSdL._SS500_.jpg"),
      Album(name: 'Awakening',artist: 'Hiroshi Sato'),
      Album(name: 'Awakening',artist: 'Hiroshi Sato'),
      Album(name: 'Awakening',artist: 'Hiroshi Sato'),
      Album(name: 'Awakening',artist: 'Hiroshi Sato'),
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TextButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      LineIcons.random,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Tout lire en aléatoire (43515)",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                )),
            const Text(
              "Trier par :",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Date d'ajout",
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                )),
            const Text(
              "Genre :",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Tous les genres",
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                ))
          ],
        ),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 25),
              child: Wrap(
                spacing: 15.0,
                children: [
                  ...List.generate(albums.length, (index) {
                    return AlbumItem(album: albums[index]);
                  })
                ],
              ),
            ))
      ],
    );
  }
}
