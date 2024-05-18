import 'package:flutter/material.dart';
import 'package:simple_note_app/widgets/note_body_view.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NoteBodyView(),
    );
  }
}
