import 'package:flutter/material.dart';
import 'package:simple_note_app/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const NoteItem();
        },
        padding: EdgeInsets.zero,
      ),
    );
  }
}
