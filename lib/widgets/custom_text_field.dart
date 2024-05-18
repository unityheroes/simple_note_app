import 'package:flutter/material.dart';
import 'package:simple_note_app/appsetting.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 32, right: 16, left: 16),
        child: TextField(
          cursorColor: Colors.white,
          decoration: InputDecoration(
              hintText: 'Title Note',
              border: border(color: kPrimaryColor),
              enabledBorder: border(color: kPrimaryColor)),
        ));
  }

  OutlineInputBorder border({required Color color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color));
  }
}
