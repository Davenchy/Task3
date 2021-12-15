import 'package:flutter/material.dart';
import 'package:task3/screens/home/home_screen.dart';

import 'screens/screen1/screen1.dart';
import 'screens/screen2/screen2.dart';
import 'screens/screen3/screen3.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        Screen1.routeName: (context) => Screen1(),
        Screen2.routeName: (context) => Screen2(),
        Screen3.routeName: (context) => Screen3(),
      },
    );
  }
}
