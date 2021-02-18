import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Color primaryColor = Color(0xFF457EAC);
  Color secondaryColor = Color(0xFF309975);
  Color logoColor = Color(0xFF809fff);

  @override
  Widget build(BuildContext context) {
    return Column(
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
            //Navigator.pop(context, MaterialPageRoute(builder: (_) {}));
          },
          color: logoColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Get Started Bismillah',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Icon(FontAwesomeIcons.arrowRight)
            ],
          ),
        ),
      ],
    );
  }
}
