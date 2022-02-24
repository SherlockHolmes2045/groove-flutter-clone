import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:photos/model/artist.dart';

class ArtistItem extends StatefulWidget {
  const ArtistItem({Key? key, required this.artist}) : super(key: key);
  final Artist artist;

  @override
  _ArtistItemState createState() => _ArtistItemState();
}

class _ArtistItemState extends State<ArtistItem> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget.artist.picture == null || widget.artist.picture == ""
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
                child: CircleAvatar(
                    radius: 85,
                    backgroundColor: const Color.fromRGBO(23, 23, 23, 1),
                    child: Stack(
                      children: [
                        const Align(
                          alignment: Alignment.center,
                          child: Icon(
                            LineIcons.user,
                            color: Colors.grey,
                            size: 60,
                          ),
                        ),
                        if (isHovered)
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.0),
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
                child: CircleAvatar(
                    radius: 85,
                    backgroundImage: NetworkImage(
                      widget.artist.picture!,
                    ),
                    backgroundColor: const Color.fromRGBO(23, 23, 23, 1),
                    child: Stack(
                      children: [
                        if (isHovered)
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
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
            widget.artist.name,
            style: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
