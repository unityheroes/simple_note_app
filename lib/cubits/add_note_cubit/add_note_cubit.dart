import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:simple_note_app/appsetting.dart';
import 'package:simple_note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color colors = const Color(0xff080708);
  addNode(NoteModel noteModel) async {
    noteModel.color = colors.value;
    emit(AddNodeLoading());
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBox);
      await notesbox.add(noteModel);
      emit(AddNodeSuccess());
    } catch (e) {
      emit(AddNodeFailure(errorMessage: e.toString()));
    }
  }
}
