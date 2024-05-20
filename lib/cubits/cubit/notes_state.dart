part of 'notes_cubit.dart';

sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesSuccess extends NotesState {
  final List<NoteModel> noteList;

  NotesSuccess({required this.noteList});
}

final class NotesFailure extends NotesState {
  final String errorMsg;

  NotesFailure({required this.errorMsg});
}
