import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:simple_note_app/cubits/cubit/notes_cubit.dart';
import 'package:simple_note_app/models/note_model.dart';

import 'package:simple_note_app/widgets/custom_app_bar.dart';
import 'package:simple_note_app/widgets/custom_text_field.dart';
import 'package:simple_note_app/widgets/edit_note_color_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});

  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        CustomAppBar(
          title: "Edit Node",
          icon: Icons.check,
          onPressed: () {
            widget.noteModel.title = title ?? widget.noteModel.title;
            widget.noteModel.subTitle = subtitle ?? widget.noteModel.subTitle;

            widget.noteModel.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          },
        ),
        CustomTextField(
          hintText: widget.noteModel.title,
          maxlines: 1,
          onChanged: (value) {
            title = value;
          },
        ),
        CustomTextField(
          hintText: widget.noteModel.subTitle,
          maxlines: 4,
          onChanged: (value) {
            subtitle = value;
          },
        ),
        EditNoteColorList(
          noteModel: widget.noteModel,
        ),
      ]),
    );
  }
}
