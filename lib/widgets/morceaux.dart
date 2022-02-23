import 'package:flutter/material.dart';

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
        )
      ],
    );
  }
}
