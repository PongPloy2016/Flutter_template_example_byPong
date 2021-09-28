import 'package:flutter/material.dart';

class ContainerCodeMobileScreen extends StatefulWidget {
  ContainerCodeMobileScreen({Key key}) : super(key: key);

  @override
  _ContainerCodeMobileScreenState createState() =>
      _ContainerCodeMobileScreenState();
}

class _ContainerCodeMobileScreenState extends State<ContainerCodeMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dfddff"),
      ),
      body: Container(
        //color: Colors.amber,
        padding: EdgeInsets.all(20),
        constraints: BoxConstraints.expand(width: 150),
        margin: EdgeInsets.all(20),
        child: Text("Codemobile"),
        decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(
                width: 5, color: Colors.black, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: [Colors.red, Colors.amberAccent],
                begin: Alignment.topCenter)),

        //alignment: Alignment.topCenter,
      ),
    );
  }
}
