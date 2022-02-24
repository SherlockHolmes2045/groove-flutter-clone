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
  var top = 0.0;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
            expandedHeight: 300.0,
            collapsedHeight: 100.0,
            floating: true,
            pinned: true,
            automaticallyImplyLeading: false,
            backgroundColor: const Color.fromRGBO(65, 47, 47, 1),
            flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  top = constraints.biggest.height;
                  print(top);
              return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35.0, vertical: 25.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (widget.album.cover != null &&
                            widget.album.cover != "")
                          SizedBox(
                            height: top <= 160 ? 100 : 240,
                            width: top <= 160 ? 100 : 240,
                            child: Image.network(widget.album.cover!),
                          ),
                        if (widget.album.cover == null ||
                            widget.album.cover == "")
                          Container(
                            height: top <= 160 ? 100 : 240,
                            width: top <= 160 ? 100 : 240,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(43, 43, 43, 1)),
                            child: Icon(
                              LineIcons.compactDisc,
                              color: Colors.grey,
                              size: top <= 160 ? 50 : 120,
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.album.name.toUpperCase(),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 28,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  if( top > 160)...[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Text(
                                        widget.album.artist == null ||
                                            widget.album.artist == ""
                                            ? "Artiste inconnu"
                                            : widget.album.artist!,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          widget.album.year == null ||
                                              widget.album.year == ""
                                              ? "Année inconnue"
                                              : widget.album.year!,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Text(
                                            String.fromCharCode(183),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Text(
                                          widget.album.genre == null ||
                                              widget.album.genre == ""
                                              ? "Genre inconnu"
                                              : widget.album.genre!,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ],
                                    )
                                  ]
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                            style:
                                                TextStyle(color: Colors.white),
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
                                            style:
                                                TextStyle(color: Colors.white),
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
                                            style:
                                                TextStyle(color: Colors.white),
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
                                            style:
                                                TextStyle(color: Colors.white),
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
                                            style:
                                                TextStyle(color: Colors.white),
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
                      ]));
            })),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, int index) {
              return ListTile(
                leading: Container(
                    padding: const EdgeInsets.all(8),
                    width: 100,
                    child: const Placeholder()),
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
