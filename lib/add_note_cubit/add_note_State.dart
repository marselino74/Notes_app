part of 'Notes_state.dart';

abstract class AddNotesState {}

class AddNoteIntial extends AddNotesState {}

class AddNoteLoading extends AddNotesState {}

class AddNoteSuccess extends AddNotesState {}

class AddNoteFailuer extends AddNotesState {
  final String errMessage;

  AddNoteFailuer(this.errMessage);
}
