import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatefulWidget {
  ListviewBuilderScreen({Key key}) : super(key: key);

  @override
  _ListviewBuilderScreenState createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {
  final List<String> items =
      List<String>.generate(20, (index) => "Item: ${++index}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListviewBuilderScreen"),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: Icon(Icons.directions_bus),
                  title: Text("${items[index]}"),
                  subtitle: Text("text"),
                  trailing: Icon(Icons.notification_add),
                ),
                Divider(
                  height: 2,
                  color: Colors.grey.shade300,
                )
              ],
            );
          }),
    );
  }
}
