import 'package:flutter/material.dart';
import 'package:photos/my_music.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Groove Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          scrollbarTheme: ScrollbarThemeData().copyWith(
            thumbColor: MaterialStateProperty.all(Colors.grey[500]),
          )
      ),
      home: const MyMusic(),
    );
  }
}

