import 'package:flutter/material.dart';
import 'package:photos/custom_app_drawer.dart';
import 'package:photos/widgets/morceaux.dart';

class MyMusic extends StatefulWidget {
  const MyMusic({Key? key}) : super(key: key);

  @override
  _MyMusicState createState() => _MyMusicState();
}

class _MyMusicState extends State<MyMusic> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children:  [
          const CustomAppDrawer(),
          Expanded(
            child: Navigator(
              onGenerateRoute: (routeSettings) {
                return MaterialPageRoute(
                    builder: (context) => Container(
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            const Padding(
                              padding: EdgeInsets.only(top:20.0),
                              child: Text(
                                "Ma musique",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.normal
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: TabBar(
                                  unselectedLabelColor: Colors.grey,
                                  unselectedLabelStyle:
                                  const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                                  labelColor: Colors.white,
                                  labelStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                                  indicator: const UnderlineTabIndicator(
                                      borderSide: BorderSide(color: Colors.grey, width: 2),
                                      insets: EdgeInsets.symmetric(
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
                                  indicatorSize: TabBarIndicatorSize.tab,
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
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: Morceaux(),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      color: Colors.black,
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      color: Colors.black,
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
    );
  }
}
