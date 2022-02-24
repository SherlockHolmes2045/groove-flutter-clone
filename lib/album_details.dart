import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:photos/model/album.dart';

class AlbumDetails extends StatefulWidget {
  const AlbumDetails({Key? key, required this.album}) : super(key: key);
  final Album album;

  @override
  _AlbumDetailsState createState() => _AlbumDetailsState();
}

class _AlbumDetailsState extends State<AlbumDetails> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 300.0,
          collapsedHeight: 200.0,
          floating: true,
          pinned: true,
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromRGBO(65, 47, 47, 1),
          flexibleSpace: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 35.0, vertical: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 240,
                  width: 240,
                  child: Image.network(
                      "https://m.media-amazon.com/images/I/610SNLkeSdL._SS500_.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            widget.album.name.toUpperCase(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: const [
                                  Icon(
                                    LineIcons.play,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Tout lire",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: const [
                                  Icon(
                                    LineIcons.plus,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Ajouter à",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: const [
                                  Icon(
                                    LineIcons.user,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Afficher l'artiste",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.pin_end,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Epingler sur l'écran d'accueil",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.edit_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Modifier les infos",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )),
                          TextButton(
                              style: const ButtonStyle(
                                  /*foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                                    (states) {
                                  if (states.contains(MaterialState.hovered)) {
                                    return Colors.green;
                                  }
                                  return Colors.black;
                                },
                              ),*/
                                  ),
                              onPressed: () {},
                              child: const Icon(
                                Icons.more_horiz_outlined,
                                color: Colors.white,
                              ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        //3
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, int index) {
              return ListTile(
                leading: Container(
                    padding: EdgeInsets.all(8),
                    width: 100,
                    child: Placeholder()),
                title: Text('Place ${index + 1}', textScaleFactor: 2),
              );
            },
            childCount: 20,
          ),
        ),
      ],
    );
  }
}
