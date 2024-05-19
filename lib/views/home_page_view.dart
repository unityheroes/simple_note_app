import 'package:flutter/material.dart';
import 'package:simple_note_app/widgets/add_note_bottom_sheet_view.dart';
import 'package:simple_note_app/widgets/note_body_view.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey.withAlpha(32),
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: const NoteBodyView(),
    );
  }
}
