import 'package:flutter/material.dart';

class CustomAppDrawer extends StatefulWidget {
  const CustomAppDrawer({Key? key}) : super(key: key);

  @override
  _CustomAppDrawerState createState() => _CustomAppDrawerState();
}

class _CustomAppDrawerState extends State<CustomAppDrawer> {
  Color hoverColor = Colors.grey;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 320,
      color: const Color.fromRGBO(62, 62, 62, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 14.0),
            child: Text(
              "Groove Musique",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 11.5),
            ),
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
                              suffixIcon: RotatedBox(
                                quarterTurns: 1,
                                child: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                  size: 25,
                                ),
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
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                        ),
                        child: MouseRegion(
                          onEnter: (event) {
                            setState(() {
                              isSelected = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              isSelected = false;
                            });
                          },
                          child: Container(
                            color:
                                !isSelected ? Colors.transparent : hoverColor,
                            child: ListTile(
                              selected: true,
                              leading: const Icon(
                                Icons.music_note_rounded,
                                color: Colors.white,
                              ),
                              title: const Text(
                                "Ma musique",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15),
                              ),
                              onTap: () {},
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        onEnter: (event) {
                          setState(() {
                            isSelected = true;
                          });
                        },
                        onExit: (event) {
                          setState(() {
                            isSelected = false;
                          });
                        },
                        child: Container(
                          color: !isSelected ? Colors.transparent : hoverColor,
                          child: ListTile(
                            selected: true,
                            leading: const Icon(
                              Icons.access_time,
                              color: Colors.white,
                            ),
                            title: const Text(
                              "Lectures récentes",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                      MouseRegion(
                        onEnter: (event) {
                          setState(() {
                            isSelected = true;
                          });
                        },
                        onExit: (event) {
                          setState(() {
                            isSelected = false;
                          });
                        },
                        child: Container(
                          color: !isSelected ? Colors.transparent : hoverColor,
                          child: ListTile(
                            selected: true,
                            leading: const Icon(
                              Icons.bar_chart,
                              color: Colors.white,
                            ),
                            title: const Text(
                              "Lecture en cours",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15),
                            ),
                            onTap: () {},
                          ),
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
                      MouseRegion(
                        onEnter: (event) {
                          setState(() {
                            isSelected = true;
                          });
                        },
                        onExit: (event) {
                          setState(() {
                            isSelected = false;
                          });
                        },
                        child: Container(
                          color: !isSelected ? Colors.transparent : hoverColor,
                          child: ListTile(
                            selected: true,
                            leading: const Icon(
                              Icons.bar_chart,
                              color: Colors.white,
                            ),
                            title: const Text(
                              "Lecture en cours",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15),
                            ),
                            onTap: () {},
                            trailing: IconButton(
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                      ...List.generate(
                        30,
                        (index) => MouseRegion(
                          onEnter: (event) {
                            setState(() {
                              isSelected = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              isSelected = false;
                            });
                          },
                          child: Container(
                            color:
                                !isSelected ? Colors.transparent : hoverColor,
                            child: ListTile(
                              selected: true,
                              leading: const Icon(
                                Icons.bar_chart,
                                color: Colors.white,
                              ),
                              title: const Text(
                                "Lecture en cours",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15),
                              ),
                              onTap: () {},
                              trailing: IconButton(
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
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
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        isSelected = true;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        isSelected = false;
                      });
                    },
                    child: Container(
                      color: !isSelected ? Colors.transparent : hoverColor,
                      child: ListTile(
                        selected: true,
                        leading: const CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.account_circle,
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
                        onTap: () {},
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
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
