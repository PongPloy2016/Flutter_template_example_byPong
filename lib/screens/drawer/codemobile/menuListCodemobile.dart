import 'package:flutter/material.dart';

class MemuListScreen extends StatefulWidget {
  MemuListScreen({Key key}) : super(key: key);

  @override
  _MemuListScreenState createState() => _MemuListScreenState();
}

class _MemuListScreenState extends State<MemuListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CM Layout"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.directions_railway_filled_sharp),
              title: Text("containerCodeMobileScreen"),
              subtitle: Text("containerCodeMobileScreen "),
              trailing: Icon(Icons.notifications_none),
              enabled: true,
              onTap: () {
                Navigator.pushNamed(context, '/containerCodeMobileScreen');
              },
            ),
            ListTile(
              selected: true,
              leading: Icon(Icons.directions_railway_filled_sharp),
              title: Text("RowAndColumScreen"),
              subtitle: Text(""),
              trailing: Icon(Icons.notifications_none),
              onTap: () {
                Navigator.pushNamed(context, '/RowAndColumScreen');
              },
            ),
            ListTile(
              leading: Icon(Icons.directions_railway_filled_sharp),
              title: Text("ListViewHorizontalScreen"),
              subtitle: Text(""),
              trailing: Icon(Icons.notifications_none),
              onTap: () {
                Navigator.pushNamed(context, '/ListViewHorizontalScreen');
              },
            ),
            ListTile(
              leading: Icon(Icons.directions_railway_filled_sharp),
              title: Text("ListviewBuilderScreen"),
              subtitle: Text(""),
              trailing: Icon(Icons.notifications_none),
              onTap: () {
                Navigator.pushNamed(context, '/ListviewBuilderScreen');
              },
            ),
            ListTile(
              leading: Icon(Icons.directions_railway_filled_sharp),
              title: Text("GridViewScreen"),
              subtitle: Text(""),
              trailing: Icon(Icons.notifications_none),
              onTap: () {
                Navigator.pushNamed(context, '/GridViewScreen');
              },
            ),
            ListTile(
              leading: Icon(Icons.directions_railway_filled_sharp),
              title: Text("StackLayoutScreen"),
              subtitle: Text(""),
              trailing: Icon(Icons.notifications_none),
              onTap: () {
                Navigator.pushNamed(context, '/StackLayoutScreen');
              },
            ),
            ListTile(
              leading: Icon(Icons.directions_railway_filled_sharp),
              title: Text("EzpandedLayoutScreen"),
              subtitle: Text(""),
              trailing: Icon(Icons.notifications_none),
              onTap: () {
                Navigator.pushNamed(context, '/ExpandedlayoutScreen');
              },
            ),
            ListTile(
              leading: Icon(Icons.directions_railway_filled_sharp),
              title: Text("SizeBoxlayoutScreen"),
              subtitle: Text(""),
              trailing: Icon(Icons.notifications_none),
              onTap: () {
                Navigator.pushNamed(context, '/SizeBoxlayoutScreen');
              },
            ),
            ListTile(
              leading: Icon(Icons.directions_railway_filled_sharp),
              title: Text("IntrinsicWidth && IntrinsicHeightlayoutScreen"),
              subtitle: Text(""),
              trailing: Icon(Icons.notifications_none),
              onTap: () {
                Navigator.pushNamed(
                    context, '/IntrinsicWidth_IntrinsicHeightlayoutScreen');
              },
            ),
            ListTile(
              leading: Icon(Icons.directions_railway_filled_sharp),
              title: Text("WorkShoplayout"),
              subtitle: Text(""),
              trailing: Icon(Icons.notifications_none),
              onTap: () {
                Navigator.pushNamed(context, '/WorkShoplayoutScreen');
              },
            ),
            ListTile(
              leading: Icon(Icons.directions_railway_filled_sharp),
              title: Text("FormLayoutScreen"),
              subtitle: Text(""),
              trailing: Icon(Icons.notifications_none),
              onTap: () {
                Navigator.pushNamed(context, '/FormLayoutScreen');
              },
            ),
            ListTile(
              leading: Icon(Icons.directions_railway_filled_sharp),
              title: Text("AppBarLayoutScreen"),
              subtitle: Text(""),
              trailing: Icon(Icons.notifications_none),
              onTap: () {
                Navigator.pushNamed(context, '/AppBarLayoutScreen');
              },
            ),
          ],

          // children: [
          //   FlutterLogo(
          //     size: 100,
          //   ),
          //   Container(
          //     margin: EdgeInsets.only(top: 20, bottom: 20),
          //     child: Text(
          //       "Flutter Online",
          //       style: TextStyle(fontSize: 30),
          //     ),
          //   ),
          //   Text(
          //       "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum ")
          // ],
        ),
      ),
    );
  }
}
