import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
            "https://miro.medium.com/max/800/1*HKwyb0obV8PeOBy4kWXkiA.png"),
      ),
    );
  }
}
