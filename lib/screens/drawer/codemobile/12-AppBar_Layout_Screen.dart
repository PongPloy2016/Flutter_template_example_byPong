import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Choice {
  final String title;
  final IconData icon;
  const Choice({this.title, this.icon});
}

const List<Choice> choices = const <Choice>[
  const Choice(title: "Car", icon: Icons.car_rental),
  const Choice(title: "Bicycle", icon: Icons.directions_bike),
  const Choice(title: "Bus", icon: Icons.bus_alert),
  const Choice(title: "Train", icon: Icons.train),
];

class AppBarLayoutScreen extends StatefulWidget {
  // final String appTitle = "CM Layout ";
  AppBarLayoutScreen({Key key}) : super(key: key);

  @override
  _AppBarLayoutScreenState createState() => _AppBarLayoutScreenState();
}

class _AppBarLayoutScreenState extends State<AppBarLayoutScreen> {
//  final String title;

//  _AppBarLayoutScreenState(this.title);

  Choice _seletechoice = choices[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // elevation: 50,
          // titleSpacing: 150,
          centerTitle: true,
          //textTheme: TextTheme(title: TextStyle(color: Colors.amber)),
          leading: Icon(Icons.ac_unit),
          title: Text("AppBar"),
          iconTheme: IconThemeData(color: Colors.red, size: 50),
          actions: [
            // for (var i = 0; i < choices.length; i++)
            //   _bluidActionButtoon(choices[i])

            // choices.forEach((characters) {
            //   _bluidActionButtoon(characters);
            // })

            // IconButton(onPressed: () {}, icon: Icon(Icons.settings))
            // _bluidActionButtoon(choices[0]),
            _bluidpopupMenu(),
          ],
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                _seletechoice.icon,
                size: 120,
              ),
              Text(_seletechoice.title)
            ],
          ),
        ));
  }

  Widget _bluidActionButtoon(Choice item) {
    return IconButton(
        icon: Icon(item.icon),
        iconSize: 25,
        color: Colors.green,
        highlightColor: Colors.red,
        splashColor: Colors.cyan,
        tooltip: item.title,
        alignment: Alignment(-10, 0),
        onPressed: () {
          _selete(item);
        });
  }

  void _selete(Choice choice) {
    setState(() {
      _seletechoice = choice;
    });
  }

  Widget _bluidpopupMenu() {
    return PopupMenuButton<Choice>(
      onSelected: _selete,
      icon: Icon(Icons.mail),
      //tooltip: true ,
      onCanceled: () {
        print("OnCanceld");
      },
      itemBuilder: (context) {
        return choices.map((Choice choice) {
          return PopupMenuItem<Choice>(
            // height: 150,
            value: choice,
            // value: Choice(icon: Icons.ac_unit, title: "fast food"),
            // enabled: false,
            child: Text(choice.title),
          );
        }).toList();
      },
    );
  }
}
