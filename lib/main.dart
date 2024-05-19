import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:simple_note_app/appsetting.dart';
import 'package:simple_note_app/models/note_model.dart';
import 'package:simple_note_app/views/home_page_view.dart';
import 'package:simple_note_app/widgets/edit_note_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {EditNoteView.id: (context) => const EditNoteView()},
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const HomePageView(),
    );
  }
}
