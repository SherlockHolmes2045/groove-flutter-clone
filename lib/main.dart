import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photos/my_music.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Groove FLutter Clone');
    setWindowMinSize(const Size(600, 600));
    setWindowMaxSize(Size.infinite);
  }
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(tablet: 600, desktop: 950, watch: 300),
  );
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
          scrollbarTheme: const ScrollbarThemeData().copyWith(
        thumbColor: MaterialStateProperty.all(Colors.grey[500]),
      )),
      home: const MyMusic(),
    );
  }
}
