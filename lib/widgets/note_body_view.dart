import 'package:flutter/material.dart';
import 'package:simple_note_app/widgets/custom_app_bar.dart';

class NoteBodyView extends StatelessWidget {
  const NoteBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomAppBar(),
        ],
      ),
    );
  }
}
