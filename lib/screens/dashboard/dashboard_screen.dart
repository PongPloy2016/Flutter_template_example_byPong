import 'package:flutter/material.dart';
import 'package:flutter_webapi/screens/bottomnav/account/account_screen.dart';
import 'package:flutter_webapi/screens/bottomnav/home/home_screen.dart';
import 'package:flutter_webapi/screens/bottomnav/notification/notification_screen.dart';
import 'package:flutter_webapi/screens/bottomnav/report/report_screen.dart';
import 'package:flutter_webapi/screens/bottomnav/setting/setting_screen.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    _title = 'หน้าหลัก';
    super.initState();
  }

  int _currentIndex = 0;
  String _title;

  final List<Widget> _children = [
    HomeScreen(),
    ReportScreen(),
    NotificationScreen(),
    SettingScreen(),
    AccountScreen()
  ];

  //สร้าง method สำหรับการเปลี่ยนหน้า

  void onTabTabped(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        {
          _title = "หน้าหลัก";
        }
        break;
      case 1:
        {
          _title = "รายงาน";
        }
        break;
      case 2:
        {
          _title = "แจ้งเตือน";
        }
        break;
      case 3:
        {
          _title = "ตั้งค่า";
        }
        break;
      case 4:
        {
          _title = "ฉัน";
        }
        break;

      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // backgroundColor: Colors.purple,
      //  backgroundColor: Color.fromARGB(0xff, 230, 300, 300),
       // backgroundColor: Color.fromRGBO(230, 230, 290, 0.5),
        backgroundColor: Color(0xffb74093),
       // leading: Icon(Icons.home),
        title: Text(_title),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications))
        ],
      ),
      drawer: SafeArea(
          child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://play-lh.googleusercontent.com/ZJVLOrSDnvzaZGiSXcBpOf3JFfVbeNgS8MiGrc7rKfr6l6r5xbF9fdr-LNYohk8f=s360-rw"),
                ),
                onTap: () {},
              ),
              otherAccountsPictures: [
                GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://play-lh.googleusercontent.com/ZJVLOrSDnvzaZGiSXcBpOf3JFfVbeNgS8MiGrc7rKfr6l6r5xbF9fdr-LNYohk8f=s360-rw"),
                  ),
                  onTap: () {},
                ),
                GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://play-lh.googleusercontent.com/ZJVLOrSDnvzaZGiSXcBpOf3JFfVbeNgS8MiGrc7rKfr6l6r5xbF9fdr-LNYohk8f=s360-rw"),
                  ),
                  onTap: () {},
                )
              ],
              accountName: Text("accountName"),
              accountEmail: Text("accountEmail"),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1579546929518-9e396f3cc809?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80"),
                      fit: BoxFit.fill)),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Codemobile Layout"),
              onTap: () {
                Navigator.pop(context);
                //Navigator.pushNamed(context, '/containerCodeMobileScreen');
                Navigator.pushNamed(context, '/MenuListCodeMobileScrren');
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("เกี่ยวกับเรา"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text("ข้อมูลการใช้งาน"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/term');
              },
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("ติดต่อทีมงาน"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("ออกจากระบบ"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/contact');
              },
            ),
            Divider(
              color: Colors.green[200],
            ),
            ListTile(
              leading: Icon(Icons.cancel),
              title: Text("ปิดเมนู"),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),
      )),
      body: _children[_currentIndex],

      //ButtomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTabped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ("หน้าหลัก")),
          BottomNavigationBarItem(
              icon: Icon(Icons.show_chart), label: ("รายงาน")),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: ("แจ้งเตือน")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: ("ตั้งค่า")),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ("ฉัน"))
        ],
      ),
    );
  }
}
