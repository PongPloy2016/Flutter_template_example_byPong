import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:transparent_image/transparent_image.dart';

class WorkShoplayoutScreen extends StatefulWidget {
  WorkShoplayoutScreen({Key key}) : super(key: key);

  @override
  _WorkShoplayoutScreenState createState() => _WorkShoplayoutScreenState();
}

class _WorkShoplayoutScreenState extends State<WorkShoplayoutScreen> {
  var _title = "CM WorkShop Layout";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: ListView(
          children: [
            headerSection(),
            titleSection(),
            buttonSection(),
            courceSrction()
          ],
        ));
  }
}

Widget headerSection() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Image(
      image: NetworkImage(
          "http://www.codelist.cc/uploads/posts/2021-09/1631374106_prokit.jpg"),
      fit: BoxFit.fill,
    ),
  );
}

Widget titleSection() {
  return Padding(
    padding: const EdgeInsets.all(50),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Codemobile Co..Ltd",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Bangkok, Thialand",
                  style: TextStyle(color: Colors.grey[500]))
            ],
          ),
        ),
        Icon(Icons.thumb_up, color: Colors.blue),
        Container(
          margin: EdgeInsets.only(left: 8),
          child: Text("99"),
        )
      ],
    ),
  );
}

// Widget titleSection = Row(
//   children: [
//     Column(
//       children: [Text("data"), Text("data")],
//     ),
//     Icon(Icons.thumb_up)
//   ],
// );

Widget buttonSection() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(icon: Icons.thumb_up, label: "like"),
      _buildButtonColumn(icon: Icons.comment, label: "comment"),
      _buildButtonColumn(icon: Icons.share, label: "share")
    ],
  );
}

Column _buildButtonColumn({IconData icon, String label}) {
  var icColor = Colors.grey.shade500;
  return Column(
    children: [
      Icon(
        icon,
        color: icColor,
      ),
      Container(
        margin: EdgeInsets.only(top: 8),
        child: Text(label,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 13, color: icColor)),
      ),
    ],
  );
}

Widget courceSrction() {
  return Container(
    margin: EdgeInsets.only(top: 70),
    padding: EdgeInsets.all(8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Mobile & Web Course"),
        ),
        Container(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _bulidCardListView(
                  url:
                      "http://www.codelist.cc/uploads/posts/2021-09/1631415881_gogreen.png"),
              _bulidCardListView(
                  url:
                      "http://www.codelist.cc/uploads/posts/2021-09/1631243576_photo-motion-animation-in-photos-and-motion-in-backgrounds.png"),
              _bulidCardListView(
                  url:
                      "http://www.codelist.cc/uploads/posts/2021-09/1631163194_strongvpn.jpg"),
              _bulidCardListView(
                  url:
                      "http://www.codelist.cc/uploads/posts/2021-09/1630855417_stackfood.png"),
            ],
          ),
        )
      ],
    ),
  );
}

Card _bulidCardListView({String url}) {
  return Card(
      child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage, image: url));
}
