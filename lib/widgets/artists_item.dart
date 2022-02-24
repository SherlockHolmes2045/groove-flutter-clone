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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget.artist.picture == null || widget.artist.picture == ""
            ? const CircleAvatar(
                radius: 85,
                backgroundColor: Color.fromRGBO(23, 23, 23, 1),
                child: Icon(
                  LineIcons.user,
                  color: Colors.grey,
                  size: 60,
                ))
            : CircleAvatar(
                radius: 85,
                backgroundImage: NetworkImage(
                  widget.artist.picture!,
                ),
                backgroundColor: const Color.fromRGBO(23, 23, 23, 1),
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
