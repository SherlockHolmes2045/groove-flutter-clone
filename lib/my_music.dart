import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:photos/custom_app_drawer.dart';
import 'package:photos/widgets/album_page.dart';
import 'package:photos/widgets/artists.dart';
import 'package:photos/widgets/morceaux.dart';

class MyMusic extends StatefulWidget {
  const MyMusic({Key? key}) : super(key: key);

  @override
  _MyMusicState createState() => _MyMusicState();
}

class _MyMusicState extends State<MyMusic> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final navKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                CustomAppDrawer(
                  navkey: navKey,
                ),
                Expanded(
                  child: Navigator(
                    key: navKey,
                    onGenerateRoute: (routeSettings) {
                      return MaterialPageRoute(
                          builder: (context) => Container(
                                color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(top: 20.0),
                                        child: Text(
                                          "Ma musique",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 32,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2,
                                          child: TabBar(
                                            unselectedLabelColor: Colors.grey,
                                            unselectedLabelStyle:
                                                const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                            labelColor: Colors.white,
                                            labelStyle: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                            indicator:
                                                const UnderlineTabIndicator(
                                                    borderSide: BorderSide(
                                                        color: Colors.grey,
                                                        width: 2),
                                                    insets:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 15)),
                                            isScrollable: true,
                                            tabs: const [
                                              Tab(
                                                text: 'Morceaux',
                                              ),
                                              Tab(
                                                text: 'Artistes',
                                              ),
                                              Tab(
                                                text: 'Albums',
                                              ),
                                            ],
                                            controller: _tabController,
                                            indicatorSize:
                                                TabBarIndicatorSize.tab,
                                          ),
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.grey,
                                        indent: 50,
                                        thickness: 0.25,
                                        endIndent: 25,
                                        height: 0,
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: TabBarView(
                                            children: const [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 8.0),
                                                child: Morceaux(),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 8.0),
                                                child: Artists(),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 8.0),
                                                child: AlbumPage(),
                                              ),
                                            ],
                                            controller: _tabController,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ));
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            color: const Color.fromRGBO(78, 28, 25, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Row(
                      children: [
                        Image.network(
                            "https://m.media-amazon.com/images/I/610SNLkeSdL._SS500_.jpg"),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Awakening",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                "Awakening",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              LineIcons.random,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              LineIcons.backward,
                              color: Colors.white,
                            ),
                          ),
                          RawMaterialButton(
                            onPressed: () {},
                            elevation: 2.0,
                            child: const Icon(
                              LineIcons.pause,
                              size: 25.0,
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.all(15.0),
                            shape: CircleBorder(
                                side: BorderSide(
                                    color: Colors.grey.withOpacity(0.8),
                                    width: 2)),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              LineIcons.forward,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.repeat,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          const Text(
                            "0:00",
                            style: TextStyle(
                                color: Colors.white, fontSize: 12.0),
                          ),
                          SizedBox(
                            height: 15,
                            width: 350,
                            child: SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  activeTrackColor: Colors.white,
                                  inactiveTrackColor: Colors.grey,
                                  trackShape: const RectangularSliderTrackShape(),
                                  trackHeight: 2.0,
                                  thumbColor: Colors.white,
                                  thumbShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 7.0),
                                  overlayColor: Colors.red.withAlpha(32),
                                  overlayShape: const RoundSliderOverlayShape(
                                      overlayRadius: 14.0),
                                ),
                                child: Slider(
                                  value: 0.5,
                                  onChanged: (value) {},
                                )),
                          ),
                          const Text(
                            "4:00",
                            style: TextStyle(
                                color: Colors.white, fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                IconButton(onPressed: (){}, icon: const Icon(LineIcons.volumeUp,color: Colors.white,size: 25,)),
                SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.purple,
                      inactiveTrackColor: Colors.grey,
                      trackShape: const RectangularSliderTrackShape(),
                      trackHeight: 2.0,
                      thumbColor: Colors.white,
                      thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 7.0),
                      overlayColor: Colors.red.withAlpha(32),
                      overlayShape: const RoundSliderOverlayShape(
                          overlayRadius: 14.0),
                    ),
                    child: Slider(
                      value: 1,
                      onChanged: (value) {},
                    )),
                IconButton(onPressed: (){}, icon: const Icon(LineIcons.windowMinimize,color: Colors.white,size: 25,)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz_outlined,color: Colors.white,size: 25,))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
