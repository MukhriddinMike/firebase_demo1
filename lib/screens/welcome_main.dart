import 'package:firebase_demo/services/login_in.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Welcome extends StatefulWidget {
  Welcome({Key key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  Color primaryColor = Color(0xFF457EAC);
  Color secondaryColor = Color(0xFF309975);
  Color logoColor = Color(0xFF809fff);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 100.0,
              //backgroundColor: Colors.blue,
              backgroundImage: AssetImage(
                'assets/muslimboy.jpg',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Assalamu Aleykum',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 28.0),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Only for Imams of University Masjid',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              elevation: 0,
              height: 50,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              color: logoColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Get Started Bismillah',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Icon(
                    Icons.navigate_next,
                    size: 30,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.navigate_next,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
