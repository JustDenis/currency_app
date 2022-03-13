import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color(0xFF1C1C1E),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: const [HomePageTitle()]),
            ),
          )),
    );
  }
}

class HomePageTitle extends StatelessWidget {
  const HomePageTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 25),
          child: Text(
            'Конвертер валют',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontFamily: 'Gothic',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 7),
          child: Text(
            'По курсу НБУ',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color(0xFF7B7979),
              fontSize: 14,
              fontFamily: 'Gothic',
            ),
          ),
        )
      ],
    );
  }
}
