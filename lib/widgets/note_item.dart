import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_note_app/cubits/cubit/notes_cubit.dart';
import 'package:simple_note_app/models/note_model.dart';
import 'package:simple_note_app/widgets/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView(noteModel: noteModel);
        }));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
            color: Color(noteModel.color).withAlpha(164),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                noteModel.title,
                style: const TextStyle(fontSize: 32),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  noteModel.subTitle,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.white.withAlpha(128),
                  size: 32,
                ),
                onPressed: () {
                  noteModel.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(right: 32, top: 8),
                child: Text(
                  noteModel.date,
                  style: const TextStyle(fontSize: 12),
                )),
          ],
        ),
      ),
    );
  }
}
