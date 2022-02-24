import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:photos/widgets/menu_item.dart';

class CustomAppDrawer extends StatefulWidget {
  const CustomAppDrawer({Key? key, required this.navkey}) : super(key: key);
  final GlobalKey<NavigatorState> navkey;

  @override
  _CustomAppDrawerState createState() => _CustomAppDrawerState();
}

class _CustomAppDrawerState extends State<CustomAppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 320,
      color: const Color.fromRGBO(60, 60, 60, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (Navigator.of(context).canPop())
                IconButton(
                    onPressed: () {
                      Navigator.of(context).maybePop();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),

              /*FutureBuilder<bool>(
                future: widget.navkey.currentState!.maybePop(),
                builder: (
                  BuildContext context,
                  AsyncSnapshot<bool> snapshot,
                ) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const SizedBox.shrink();
                  } else if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return const SizedBox.shrink();
                    } else if (snapshot.hasData) {
                      if (snapshot.data!) {
                        return IconButton(
                            onPressed: () {
                              widget.navkey.currentState!.canPop();
                            },
                            icon: const Icon(Icons.arrow_back,color: Colors.white,));
                      } else {
                        return const SizedBox.shrink();
                      }
                    } else {
                      return const SizedBox.shrink();
                    }
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),*/
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 14.0),
                child: Text(
                  "Groove Musique",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 12),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 14.0),
            child: InkWell(
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 560,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, right: 18, left: 14.0),
                        child: SizedBox(
                          height: 40,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(23, 23, 23, 1),
                              contentPadding: EdgeInsets.all(8),
                              suffixIcon: Icon(
                                LineIcons.search,
                                color: Colors.white,
                                size: 25,
                              ),
                              focusColor: Colors.white,
                              hintText: "Rechercher",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(
                            top: 5,
                          ),
                          child: MenuItem(
                            title: Text(
                              "Ma musique",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15),
                            ),
                            leading: Icon(
                              LineIcons.music,
                              color: Colors.white,
                            ),
                          )),
                      const MenuItem(
                        title: Text(
                          "Lectures récentes",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        ),
                        leading: Icon(
                          LineIcons.clock,
                          color: Colors.white,
                        ),
                      ),
                      const MenuItem(
                        title: Text(
                          "Lecture en cours",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        ),
                        leading: Icon(
                          Icons.bar_chart,
                          color: Colors.white,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14.0),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 0.2,
                          height: 1,
                        ),
                      ),
                      MenuItem(
                        title: const Text(
                          "Playlists",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        ),
                        leading: const Icon(
                          Icons.playlist_play_sharp,
                          color: Colors.white,
                        ),
                        trailing: IconButton(
                          icon: const Icon(
                            LineIcons.plus,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      ...List.generate(
                        30,
                        (index) => const MenuItem(
                          title: Text(
                            "Starboy",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 15),
                          ),
                          leading: Icon(
                            Icons.album,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.0),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.2,
                      height: 1,
                    ),
                  ),
                  MenuItem(
                    leading: const CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        LineIcons.user,
                        color: Colors.black,
                      ),
                    ),
                    title: const Text(
                      "Sherlock Holmes",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 15),
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        LineIcons.cog,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
