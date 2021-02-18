import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final IconData icon;
  final String labaltext;
  final bool obscure;
  const MyTextField({
    Key key,
    @required this.controller,
    @required this.icon,
    @required this.labaltext,
    @required this.obscure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color secondaryColor = Color(0xFF309975);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: secondaryColor, border: Border.all(color: Colors.blue)),
      child: TextField(
        obscureText: obscure,
        controller: controller,
        style: TextStyle(color: Colors.white, fontSize: 20),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          labelText: labaltext,
          labelStyle: TextStyle(color: Colors.white),
          icon: Icon(
            icon,
            color: Colors.white,
            //size: 30,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
