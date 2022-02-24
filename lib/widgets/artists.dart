import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:photos/widgets/artists_item.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import '../model/artist.dart';

class Artists extends StatefulWidget {
  const Artists({Key? key}) : super(key: key);

  @override
  _ArtistsState createState() => _ArtistsState();
}

Map<String, List<Artist>> artists = {
  "#": [
    Artist(
        name: "2Pac",
        picture:
            "https://cdn.radiofrance.fr/s3/cruiser-production/2018/08/7c6275ae-2963-402d-87e4-09775db49e07/400x400_tupac_-_time_life_pictures.jpg"),
    Artist(
      name: "88rising",
    )
  ],
  "A": [
    Artist(
      name: "Abou Tall",
    ),
    Artist(
      name: "Access",
    ),
    Artist(
        name: "Abou Tall",
        picture:
            "https://kaomag.com/wp-content/uploads/2019/11/ABOUTALL%C2%A9FIFOU-5990.jpg"),
    Artist(
      name: "Access",
    ),
    Artist(
      name: "Abou Tall",
    ),
    Artist(
      name: "Access",
    ),
    Artist(
      name: "Abou Tall",
    ),
    Artist(
      name: "Access",
    )
  ],
  "B": [
    Artist(
        name: "Beyoncé",
        picture:
            "https://cdn-elle.ladmedia.fr/var/plain_site/storage/images/people/la-vie-des-people/news/decouvrez-beyonce-a-l-age-de-16-ans-dans-un-clip-de-rap-2878074/52255594-1-fre-FR/Decouvrez-Beyonce-a-l-age-de-16-ans-dans-un-clip-de-rap.jpg"),
    Artist(
        name: "Burna Boy",
        picture:
            "https://media.gqmagazine.fr/photos/5e96f7f25d2f1100086a5a46/master/pass/v-dtmt-burnaboy-m.jpg"),
    Artist(
      name: "BigBang",
    ),
  ]
};

class _ArtistsState extends State<Artists> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                      "Tout lire en aléatoire (358)",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                )),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Trier par :",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Date d'ajout",
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                )),
          ],
        ),
        Expanded(
            child: Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 25),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    String key = artists.keys.elementAt(index);
                    return StickyHeader(
                        header: Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            width: double.infinity,
                            color: Colors.black,
                            child: Text(
                              key,
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 22),
                            ),
                          ),
                        ),
                        content: Wrap(
                          runSpacing: 30,
                          spacing: 16,
                          children: [
                            ...List.generate(artists[key]!.length, (index) {
                              return ArtistItem(
                                artist: artists[key]![index],
                              );
                            })
                          ],
                        ));
                  },
                  itemCount: artists.length,
                ) /*ListView.separated(
            itemBuilder: (context, index) {
              String key = artists.keys.elementAt(index);
              return Wrap(
                runSpacing: 30,
                spacing: 16,
                children: [
                  ...List.generate(artists[key]!.length, (index) {
                    return ArtistItem(
                      artist: artists[key]![index],
                    );
                  })
                ],
              );
            },
            itemCount: artists.length,
            separatorBuilder: (BuildContext context, int index) {
              String key = artists.keys.elementAt(index+1);
              return Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                child: Text(
                  key,
                  style: const TextStyle(color: Colors.grey, fontSize: 22),
                ),
              );
            },
          ),*/
                ))
      ],
    );
  }
}
