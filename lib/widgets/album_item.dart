import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:photos/model/album.dart';

class AlbumItem extends StatefulWidget {
  const AlbumItem({Key? key, required this.album}) : super(key: key);
  final Album album;
  @override
  _AlbumItemState createState() => _AlbumItemState();
}

class _AlbumItemState extends State<AlbumItem> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.album.cover == null || widget.album.cover == ""
            ? MouseRegion(
          onEnter: (event) {
            setState(() {
              isHovered = true;
            });
          },
          onExit: (event) {
            setState(() {
              isHovered = false;
            });
          },
          child: Container(
              height: 150,
              width: 150,
              color:  const Color.fromRGBO(43, 43, 43, 1),
              child: Stack(
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: Icon(
                      LineIcons.compactDisc,
                      color: Colors.grey,
                      size: 60,
                    ),
                  ),
                  if (isHovered)
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(37, 37, 37, 1),
                                    shape: BoxShape.circle),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      LineIcons.play,
                                      color: Colors.white,
                                    ))),
                            Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(37, 37, 37, 1),
                                    shape: BoxShape.circle),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      LineIcons.plus,
                                      color: Colors.white,
                                    )))
                          ],
                        ),
                      ),
                    )
                ],
              )),
        )
            : MouseRegion(
          onEnter: (event) {
            setState(() {
              isHovered = true;
            });
          },
          onExit: (event) {
            setState(() {
              isHovered = false;
            });
          },
          child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color:  const Color.fromRGBO(43, 43, 43, 1),
                image: DecorationImage(
                  image: NetworkImage(
                    widget.album.cover!
                  )
                )
              ),
              child: Stack(
                children: [
                  if (isHovered)
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(37, 37, 37, 1),
                                    shape: BoxShape.circle),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      LineIcons.play,
                                      color: Colors.white,
                                    ))),
                            Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(37, 37, 37, 1),
                                    shape: BoxShape.circle),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      LineIcons.plus,
                                      color: Colors.white,
                                    )))
                          ],
                        ),
                      ),
                    )
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            widget.album.name,
            style: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          widget.album.artist != null || widget.album.artist != "" ? widget.album.artist! : "Artiste inconnu",
          style: const TextStyle(
              color: Colors.grey, fontSize: 13, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
