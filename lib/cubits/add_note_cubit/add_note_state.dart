part of 'add_note_cubit.dart';

sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNodeLoading extends AddNoteState {}

final class AddNodeSuccess extends AddNoteState {}

final class AddNodeFailure extends AddNoteState {
  final String errorMessage;

  AddNodeFailure({required this.errorMessage});
}
