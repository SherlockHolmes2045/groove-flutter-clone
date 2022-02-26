import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:photos/model/morceau.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        /*print(sizingInformation.screenSize.width);
        print(sizingInformation.deviceScreenType);*/
        return Container(
          color: isSelected
              ? const Color.fromRGBO(51, 51, 51, 1)
              : widget.index.isOdd
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
                padding: const EdgeInsets.only(left: 45.0, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  widget.morceau.title,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                              if (isSelected) ...[
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 100.0),
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
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        widget.morceau.artist,
                        overflow: TextOverflow.ellipsis,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    if (sizingInformation.screenSize.width >= 1230)
                      Expanded(
                        child: Text(
                          widget.morceau.album,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12),
                        ),
                      ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (sizingInformation.screenSize.width > 1080)
                            Text(
                              widget.morceau.year,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12),
                            ),
                          Text(
                            widget.morceau.type,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            widget.morceau.duration,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
        );
      },
    );
  }
}
