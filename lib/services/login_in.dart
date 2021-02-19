// login screen only for Imams

import 'package:firebase_demo/widgets/footer.dart';
import 'package:firebase_demo/widgets/mytextField.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  final Color primaryColor = Color(0xFF001247);
  final Color secondaryColor = Color(0xFF309975);
  final Color logoColor = Color(0xFF809fff);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // FocusScopeNode currentFocus = FocusScope.of(context);
        // if (!currentFocus.hasPrimaryFocus) {
        //   currentFocus.unfocus();
        // }
        WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: primaryColor,
        body: SafeArea(
          child: Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.symmetric(horizontal: 45),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Assalamu Aleykum Welcome to Masjid Prayer Times',
                    textAlign: TextAlign.center,
                    style:
                        GoogleFonts.openSans(color: Colors.white, fontSize: 28),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  MyTextField(
                    controller: nameController,
                    icon: FontAwesomeIcons.userAlt,
                    labaltext: 'Username',
                    obscure: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    controller: passwordController,
                    icon: FontAwesomeIcons.lock,
                    labaltext: 'Password',
                    obscure: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    elevation: 0,
                    minWidth: double.maxFinite,
                    height: 50,
                    color: logoColor,
                    child: Text(
                      'Sign-In',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    textColor: Colors.white,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Foot(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
