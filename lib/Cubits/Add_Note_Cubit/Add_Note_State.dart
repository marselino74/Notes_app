part of 'Add_Note_State.dart';

abstract class AddNotesState {}

class NotesIntial extends AddNotesState {}

class AddNoteLoading extends AddNotesState {}

class AddNoteSuccess extends AddNotesState {}

class AddNoteFailuer extends AddNotesState {
  final String errMessage;

  AddNoteFailuer(this.errMessage);
}
