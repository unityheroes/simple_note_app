import 'package:flutter/material.dart';
import 'package:simple_note_app/models/note_model.dart';
import 'package:simple_note_app/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.noteModel});
  static String id = 'EditNoteView';
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        noteModel: noteModel,
      ),
    );
  }
}
