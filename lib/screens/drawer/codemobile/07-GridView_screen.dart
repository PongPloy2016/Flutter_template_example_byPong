import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  GridViewScreen({Key key}) : super(key: key);

  @override
  _GridViewScreenState createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  final List<String> items =
      List<String>.generate(20, (index) => "Item: ${++index}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GridViewScreen"),
        ),
        body: GridView.extent(
          // padding: EdgeInsets.all(8),
          crossAxisSpacing: 8,
          // crossAxisCount: 2, //cont
          mainAxisSpacing: 8,
          maxCrossAxisExtent: 120,
          children: _bulidGraidList(20),
        ));
  }

  List<Card> _bulidGraidList(int cont) {
    return List.generate(
        cont,
        (index) => Card(
              child: Image.network(
                'https://flutter.dev/assets/images/docs/ui/layout/sample-flutter-layout.png',
                fit: BoxFit.cover,
              ),
            ));
  }
}
