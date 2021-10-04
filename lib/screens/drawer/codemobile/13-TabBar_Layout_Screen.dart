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
  const Choice(title: "BOAT", icon: Icons.directions_boat),
  const Choice(title: "BUS", icon: Icons.directions_bus),
  const Choice(title: "Train", icon: Icons.directions_railway),
  const Choice(title: "WALK", icon: Icons.directions_walk),
];

class TabbarLayoutScreen extends StatefulWidget {
  // final String appTitle = "CM Layout ";
  TabbarLayoutScreen({Key key}) : super(key: key);

  @override
  _TabbarLayoutScreenState createState() => _TabbarLayoutScreenState();
}

class _TabbarLayoutScreenState extends State<TabbarLayoutScreen> {
//  final String title;

//  _AppBarLayoutScreenState(this.title)Tabbar

  Choice _seletechoice = choices[0];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //initialIndex: 3,
      length: choices.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
          // bottom: TabBar(
          //     unselectedLabelColor: Colors.black,
          //     // indicatorWeight: 10,
          //     // indicatorColor: Colors.black,
          //     isScrollable: true,
          //     // labelColor: Colors.green,
          //     onTap: (index) {
          //       print("index  ${index} ");
          //     },
          //     tabs: choices.map((Choice choices) {
          //       return Tab(
          //         // text: choices.title,
          //         //  icon: Icon(choices.icon),
          //         child: Row(
          //           children: [
          //             Icon(choices.icon),
          //             Container(
          //               margin: EdgeInsets.only(left: 8),
          //               child: Text(choices.title),
          //             )
          //           ],
          //         ),
          //       );
          //     }).toList()),
        ),
        body: TabBarView(
            children: choices
                .map((Choice choice) => Center(
                      child: Text(choice.title),
                    ))
                .toList()
            //  children:choices.map((Choice choice){
            // }).toList(),
            ),
        bottomNavigationBar: SafeArea(
          child: Container(
            color: Theme.of(context).primaryColor,
            child: TabBar(
                isScrollable: true,
                // labelColor: Colors.green,
                onTap: (index) {
                  print("index  ${index} ");
                },
                tabs: choices.map((Choice choices) {
                  return Tab(
                    text: choices.title,
                    icon: Icon(choices.icon),
                  );
                }).toList()),
          ),
        ),
      ),
    );
  }
}
