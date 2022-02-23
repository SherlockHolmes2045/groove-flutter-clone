import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:photos/model/morceau.dart';

class MorceauItem extends StatefulWidget {
  const MorceauItem({Key? key, required this.morceau, required this.index})
      : super(key: key);
  final Morceau morceau;
  final int index;
  @override
  _MorceauItemState createState() => _MorceauItemState();
}

class _MorceauItemState extends State<MorceauItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isSelected
          ? const Color.fromRGBO(51, 51, 51, 1)
          : widget.index.isEven
              ? Colors.black
              : const Color.fromRGBO(26, 26, 26, 1),
      child: MouseRegion(
          onExit: (event) {
            setState(() {
              isSelected = false;
            });
          },
          onEnter: (event) {
            setState(() {
              isSelected = true;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 6,
                  child: Row(
                    children: [
                      Text(
                        widget.morceau.title,
                        overflow: TextOverflow.ellipsis,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      if (isSelected) ...[
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 18,
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      LineIcons.play,
                                      color: Colors.white,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      LineIcons.plus,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          ),
                        )
                      ]
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 6,
                  child: Text(
                    widget.morceau.artist,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 6,
                  child: Text(
                    widget.morceau.album,
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
                        widget.morceau.year,
                        overflow: TextOverflow.ellipsis,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Text(
                        widget.morceau.type,
                        overflow: TextOverflow.ellipsis,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
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
                        widget.morceau.duration,
                        overflow: TextOverflow.ellipsis,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
