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
  Color logoColor = Color(0xFFdad873);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/muslimboy.jpg',
          height: 250,
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
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          //textColor: Colors.white,
        ),
        SizedBox(
          height: 20,
        ),
        MaterialButton(
          elevation: 0,
          minWidth: double.maxFinite,
          height: 50,
          onPressed: () {
            //google Sign
          },
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(FontAwesomeIcons.google),
              SizedBox(
                width: 10,
              ),
              Text(
                'Sign-in using Google',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ],
          ),
          textColor: Colors.white,
        ),
        SizedBox(
          height: 100,
        ),
        Align(
          alignment: Alignment.bottomCenter,
        ),
      ],
    );
  }
}
