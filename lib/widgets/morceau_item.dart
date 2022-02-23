import 'package:flutter/material.dart';
import 'package:photos/model/morceau.dart';

class MorceauItem extends StatelessWidget {
  const MorceauItem({Key? key, required this.morceau}) : super(key: key);
  final Morceau morceau;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        child: Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 6,
            child: Text(
              morceau.title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 6,
            child: Text(
              morceau.artist,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 6,
            child: Text(
              morceau.album,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  morceau.year,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(
                  morceau.type,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  morceau.duration,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
