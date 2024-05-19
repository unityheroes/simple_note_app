import 'package:flutter/material.dart';
import 'package:simple_note_app/appsetting.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxlines = 1,
    required this.onSaved,
  });
  final String hintText;
  final int maxlines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 32, right: 16, left: 16),
        child: TextFormField(
          onSaved: onSaved,
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return "Field is Required";
            } else {
              return null;
            }
          },
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
