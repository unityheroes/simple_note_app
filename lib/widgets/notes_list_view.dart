import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_note_app/cubits/cubit/notes_cubit.dart';
import 'package:simple_note_app/models/note_model.dart';
import 'package:simple_note_app/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> noteslist =
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: ListView.builder(
            itemCount: noteslist.length,
            itemBuilder: (context, index) {
              return NoteItem(
                noteModel: noteslist[index],
              );
            },
            padding: EdgeInsets.zero,
          ),
        );
      },
    );
  }
}
