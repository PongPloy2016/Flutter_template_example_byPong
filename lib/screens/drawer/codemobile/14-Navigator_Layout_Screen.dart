import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_webapi/main.dart';

class NavbarLayoutScreen extends StatefulWidget {
  // final String appTitle = "CM Layout ";
  NavbarLayoutScreen({Key key}) : super(key: key);
  @override
  _NavbarLayoutScreenState createState() => _NavbarLayoutScreenState();
}

class _NavbarLayoutScreenState extends State<NavbarLayoutScreen> {
  final _route = <String, WidgetBuilder>{
    'page1': (BuildContext context) => NavbarLayoutScreen(),
    'page2': (BuildContext context) => Page2(),
    'page3': (BuildContext context) => Page3(),
    'page4': (BuildContext context) => Page4(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: _route,

      //initialIndex: 3,

      home: Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NavbarLayoutScreen"),
        ),
        body: Center(
          child: FlatButton(
              color: Colors.amber,
              onPressed: () {
                //   Navigator.pushNamed(context, '/page2');
                Navigator.pushReplacementNamed(context, 'page2');
              },
              // child: Text("Next Page")
              child: Text("page2")),
        ));
  }
}

class User {
  String fname;
  User(this.fname);
}

class Page2 extends StatelessWidget {
  const Page2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Main 2"),
        ),
        body: Center(
          child: FlatButton(
              onPressed: () {
                // Navigator.pushNamed(context, 'page3');

                var user = User("ponglang");
                var trl = "1150";
                var result = Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Page3(user: user, text: trl)));

                print(result);
              },
              child: Text("Next Page3")),
        ));
  }
}

class Page3 extends StatelessWidget {
  String text;
  User user;

  Page3({this.user, this.text});

  @override
  Widget build(BuildContext context) {
    print(user.fname);
    //print(text);

    return Scaffold(
        appBar: AppBar(
          title: Text("Main 3"),
        ),
        body: Center(
          child: FlatButton(
              onPressed: () {
                // Navigator.popAndPushNamed(context, 'page4');
                Navigator.pop(context, "codemobile");
              },
              child: Text("Next Page4")),
        ));
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Main 4"),
        ),
        body: Center(
          child: FlatButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, 'page1', (Route<dynamic> route) => false);

                // Navigator.pushNamedAndRemoveUntil(
                //     context, 'page4', ModalRoute.withName('page1'));

                // Navigator.popUntil(context, ModalRoute.withName('page2'));
              },
              child: Text("Logout")),
        ));
  }
}

// Scaffold(
//           appBar: AppBar(
//             title: Text("NavbarLayoutScreen"),
//           ),
//           body: Center(
//             child: FlatButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, 'page2');
//                 },
//                 child: Text("Next Page2")),
//           ))
