import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Screen 1'),
            onTap: () => Navigator.pushNamed(context, '/screen1'),
          ),
          ListTile(
            title: Text('Screen 2'),
            onTap: () => Navigator.pushNamed(context, '/screen2'),
          ),
          ListTile(
            title: Text('Screen 3'),
            onTap: () => Navigator.pushNamed(context, '/screen3'),
          ),
        ],
      ),
    );
  }
}
