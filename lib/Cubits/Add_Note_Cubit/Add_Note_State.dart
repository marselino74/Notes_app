
abstract class AddNotesState {}

class AddNotesIntial extends AddNotesState {}

class AddNoteLoading extends AddNotesState {}

class AddNoteSuccess extends AddNotesState {}

class AddNoteFailuer extends AddNotesState {
  final String errMessage;

  AddNoteFailuer(this.errMessage);
}
