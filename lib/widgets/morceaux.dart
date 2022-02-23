import 'package:flutter/material.dart';
import 'package:photos/model/morceau.dart';
import 'package:photos/widgets/morceau_item.dart';

class Morceaux extends StatelessWidget {
  const Morceaux({Key? key}) : super(key: key);

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
                      Icons.more_vert_outlined,
                      color: Colors.white,
                      size: 15,
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
                  "Date d'ajout",
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                ))
          ],
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 25),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return SizedBox(
                height: 45,
                child: MorceauItem(
                  morceau: Morceau(
                      artist: 'Nekfeu',
                      year: '2016',
                      type: 'Rap',
                      album: 'Cyborg',
                      duration: '6:25',
                      title: 'Humanoïde'),
                  index: index,
                ),
              );
            },
            itemCount: 300,
          ),
        ))
      ],
    );
  }
}
