import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:simple_note_app/appsetting.dart';
import 'package:simple_note_app/cubits/cubit/notes_cubit.dart';

import 'package:simple_note_app/models/note_model.dart';
import 'package:simple_note_app/simple_bloc_observer.dart';
import 'package:simple_note_app/views/home_page_view.dart';
import 'package:simple_note_app/widgets/edit_note_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObServer();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        routes: {
          EditNoteView.id: (context) => const EditNoteView(),
        },
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const HomePageView(),
      ),
    );
  }
}
