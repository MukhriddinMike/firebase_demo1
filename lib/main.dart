import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_demo/screens/loginIn.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

class _HomepageState extends State<Homepage> {
  //TextEditingController _signInWithGoogle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase SignIn'),
      ),
      body: Login(),
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
