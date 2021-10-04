import 'package:flutter/material.dart';
import 'package:flutter_webapi/screens/bottomnav/account/account_screen.dart';
import 'package:flutter_webapi/screens/bottomnav/home/home_screen.dart';
import 'package:flutter_webapi/screens/bottomnav/notification/notification_screen.dart';
import 'package:flutter_webapi/screens/bottomnav/setting/setting_screen.dart';
import 'package:flutter_webapi/screens/bottomnav/stock/stock_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key key}) : super(key: key);
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  //สร้าง  object SharePrefernces
  SharedPreferences sharedPreferences;

  //สร้างตัวแปร สำหรับ ไว้เก็บชื่อและอีเมล์ผู้ใช้
  String nameAccount , emailAccount ;

  int _currentIndex = 0;
  String _title;

  final List<Widget> _childen = [
    HomeScreen(),
    StockScreen(),
    NotificationScreen(),
    SettingScreen(),
    AccountScreen()
  ];

  @override
  void initState() {
    super.initState();
    _title = "หน้าหลัก";
    //ตรวจข้อมูล  SharedPreferences ของผู้ใช้
    checkloginStatus();
  }

  //check login Status
  checkloginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();

    
    if (sharedPreferences.getString("storeEmail") == null) {
      //ส่งกลับไปหน้า Login
      Navigator.pushNamed(context, '/login');
    }

    setState(() {
          nameAccount = sharedPreferences.getString('storeName');
           emailAccount = sharedPreferences.getString('storeEmail');
    });

  }

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
          _title = "สต็อกสินค้า";
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
          title: Text(_title ,style: GoogleFonts.kanit()),
          actions: [
            FlatButton(
                onPressed: () {
                  //สร้าง  object SharePrefernces
                  //clear  object SharePrefernces
                  sharedPreferences.clear();
                  Navigator.pushNamed(context, '/login');
                },
                child:
                    Text("ออกจากระบบ", style: TextStyle(color: Colors.white)))
          ],
        ),
        //ส่วนของ DroawerMenu
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
                accountName: Text(nameAccount),
                accountEmail: Text(emailAccount),
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
                leading: Icon(Icons.mail),
                title: Text("MediaQueryScreen"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/MediaQueryScreen');
                },
              ),
              ListTile(
                  leading: Icon(Icons.info),
                  title: Text("ออกจากระบบ"),
                  onTap: () {
                    //clear  object SharePrefernces
                    sharedPreferences.clear();
                    Navigator.pushNamed(context, '/login');
                  }),
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
        body: _childen[_currentIndex],

        //ส่วนของ ButtonNavigationBar
        // ส่วนของ Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
            onTap: onTabTabped,
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('หน้าหลัก')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.storage), title: Text('สต็อก')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), title: Text('แจ้งเตือน')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), title: Text('ตั้งค่า')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text('ฉัน')),
            ]));
  }
}
