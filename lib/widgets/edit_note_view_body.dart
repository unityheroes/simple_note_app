import 'package:flutter/material.dart';
import 'package:simple_note_app/widgets/custom_app_bar.dart';
import 'package:simple_note_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key});

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        const CustomAppBar(
          title: "Edit Node",
          icon: Icons.check,
        ),
        CustomTextField(
          hintText: "Title Note",
          maxlines: 1,
          onSaved: (value) {
            title = value;
          },
        ),
        CustomTextField(
          hintText: "Content",
          maxlines: 4,
          onSaved: (value) {
            subTitle = value;
          },
        )
      ]),
    );
  }
}
