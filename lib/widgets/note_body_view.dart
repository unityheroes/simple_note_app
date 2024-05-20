import 'package:flutter/material.dart';

import 'package:simple_note_app/widgets/custom_app_bar.dart';

import 'package:simple_note_app/widgets/notes_list_view.dart';

class NoteBodyView extends StatelessWidget {
  const NoteBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          CustomAppBar(
            title: "My Notes App",
            icon: Icons.search,
            onPressed: () {},
          ),
          const Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
