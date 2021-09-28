import 'package:flutter/material.dart';

class StackLayoutScreen extends StatefulWidget {
  StackLayoutScreen({Key key}) : super(key: key);

  @override
  _StackLayoutScreenState createState() => _StackLayoutScreenState();
}

class _StackLayoutScreenState extends State<StackLayoutScreen> {
  final List<String> items =
      List<String>.generate(20, (index) => "Item: ${++index}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("StackLayout"),
        ),
        body: Stack(
          alignment: Alignment(0, 0.8),
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://ci3.googleusercontent.com/proxy/tBmZ6G6KXUsblli1RVdY7e7kI6pyRelp-RYJzKy6ehFqJh6tkLnmaP7YPIvWPhbNuP3FlLj4ICZxXCiSYZ2BfJaVj2TDeBSf_MLuo8hSkvEk49alG5C6ysvIY2eJXDfgvf-RA5Inq222iZzhSQ2HAIwWhp0OqKIopSzK5kV6L02hgJ0ZjX5SvpZdJu-3r08UlbED7IP56rZpk78nAqZiK3DaciVEiVCeT-3agb2G-T2SwY6C0yjWFQ_k35eEwIU=s0-d-e1-ft#https://cdnp2.stackassets.com/d7da996b00c890a879e01cbabc51cb180f0e07da/store/9f2080c5028bf4fcdc714c4e9636eb70c02c39adeec94d02bf9b5741ae90/sale_18721_primary_image_wide.jpg"),
              radius: 100,
            ),
            // Image(
            //   image: NetworkImage(
            //       "https://ci3.googleusercontent.com/proxy/tBmZ6G6KXUsblli1RVdY7e7kI6pyRelp-RYJzKy6ehFqJh6tkLnmaP7YPIvWPhbNuP3FlLj4ICZxXCiSYZ2BfJaVj2TDeBSf_MLuo8hSkvEk49alG5C6ysvIY2eJXDfgvf-RA5Inq222iZzhSQ2HAIwWhp0OqKIopSzK5kV6L02hgJ0ZjX5SvpZdJu-3r08UlbED7IP56rZpk78nAqZiK3DaciVEiVCeT-3agb2G-T2SwY6C0yjWFQ_k35eEwIU=s0-d-e1-ft#https://cdnp2.stackassets.com/d7da996b00c890a879e01cbabc51cb180f0e07da/store/9f2080c5028bf4fcdc714c4e9636eb70c02c39adeec94d02bf9b5741ae90/sale_18721_primary_image_wide.jpg"),
            // ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(4)),
              child: Text(
                "i dog",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            )
          ],
        ));
  }
}
