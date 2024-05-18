import 'package:flutter/material.dart';
import 'package:simple_note_app/widgets/custom_app_bar.dart';
import 'package:simple_note_app/widgets/note_item.dart';

class NoteBodyView extends StatelessWidget {
  const NoteBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomAppBar(),
          NoteItem(),
        ],
      ),
    );
  }
}
