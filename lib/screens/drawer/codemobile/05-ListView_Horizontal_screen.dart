import 'package:flutter/material.dart';

class ListViewHorizontalScreen extends StatefulWidget {
  ListViewHorizontalScreen({Key key}) : super(key: key);

  @override
  _ListViewHorizontalScreenState createState() =>
      _ListViewHorizontalScreenState();
}

class _ListViewHorizontalScreenState extends State<ListViewHorizontalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewHorizontalScreen"),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            alignment: FractionalOffset.center,
            width: 150,
            color: Colors.red,
            child: Text(
              "A",
              style: TextStyle(fontSize: 100, color: Colors.white),
            ),
          ),
          Container(
            alignment: FractionalOffset.center,
            width: 150,
            color: Colors.green,
            child: Text(
              "B",
              style: TextStyle(fontSize: 100, color: Colors.white),
            ),
          ),
          Container(
            alignment: FractionalOffset.center,
            width: 150,
            color: Colors.orange,
            child: Text(
              "C",
              style: TextStyle(fontSize: 100, color: Colors.white),
            ),
          ),
          Container(
            alignment: FractionalOffset.center,
            width: 150,
            color: Colors.lightBlue,
            child: Text(
              "D",
              style: TextStyle(fontSize: 100, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
