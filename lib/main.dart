import 'package:flutter/material.dart';
import 'package:fordemo/screens/bottom.dart';
import 'package:fordemo/screens/home.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

Future<void> main() async {
  runApp(
    new MaterialApp(home: RunApp(), debugShowCheckedModeBanner: false),
  );
}

class RunApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RunAppPageState();
}

class _RunAppPageState extends State<RunApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SplashScreenView(
      home: bottomNav(),
      duration: 3000,
      imageSize: 200,
      imageSrc: "../lib/asset/zone11.png",
      backgroundColor: Colors.white,
    ));
  }
}
