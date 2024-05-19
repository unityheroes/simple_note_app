import 'package:flutter/material.dart';
import 'package:simple_note_app/widgets/custom_app_bar.dart';
import 'package:simple_note_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(children: [
        CustomAppBar(
          title: "Edit Node",
          icon: Icons.check,
        ),
        CustomTextField(hintText: "Title Note"),
        CustomTextField(
          hintText: "Content",
          maxlines: 5,
        ),
      ]),
    );
  }
}
