import 'package:flutter/material.dart';
import 'package:simple_note_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField(
          hintText: "Title Note",
          maxlines: 1,
        ),
        CustomTextField(
          hintText: "Content",
          maxlines: 4,
        )
      ],
    );
  }
}
