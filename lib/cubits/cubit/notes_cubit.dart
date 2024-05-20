import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:simple_note_app/appsetting.dart';
import 'package:simple_note_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notelist;

  List<NoteModel> fetchAllNotes() {
    var notesbox = Hive.box<NoteModel>(kNotesBox);
    List<NoteModel> notes = notesbox.values.toList();
    notelist = notes;
    emit(NotesLoaded());
    return notes;
  }
}
