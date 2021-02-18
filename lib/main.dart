import 'package:firebase_demo/screens/welcome_main.dart';
import 'package:firebase_demo/services/login_in.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

Color primaryColor = Color(0xFF001247);

class _HomepageState extends State<Homepage> {
  //TextEditingController _signInWithGoogle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Azan Korea'),
        backgroundColor: Colors.transparent,
      ),
      body: Welcome(),
      backgroundColor: primaryColor,
    );
  }

  // ignore: non_constant_identifier_names
  BlackScreen() {
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //
        children: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Sign In With Google',
                style: TextStyle(color: Colors.white, fontSize: 24.0),
              ),
            ),
            color: Colors.greenAccent,
          ),
        ],
      ),
    );
  }
}
