import 'package:back_front/FrontEnd/Global/MyColor.dart' as colors;
import 'package:back_front/FrontEnd/Pages/MainPages/MyHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: colors.MyColors.accentColor),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Back-End and Front-End',
      home: const MyHome(),
      initialRoute: "/",
      routes: {
        "/my-home": (context) => const MyHome(),
      },
    );
  }
}
