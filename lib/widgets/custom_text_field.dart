import 'package:flutter/material.dart';
import 'package:simple_note_app/appsetting.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxlines = 1});
  final String hintText;
  final int maxlines;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 32, right: 16, left: 16),
        child: TextField(
          cursorColor: Colors.white,
          maxLines: maxlines,
          decoration: InputDecoration(
              hintText: hintText,
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
