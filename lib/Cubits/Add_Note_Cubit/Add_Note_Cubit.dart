import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/Constants.dart';
import 'package:notes_app/Cubits/add_note_cubit/add_note_State.dart';
import 'package:notes_app/Model/Note_Model.dart';

class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNotesIntial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccess());
      await notesBox.add(note);
    } on Exception catch (e) {
      AddNoteFailuer(e.toString());
    }
  }
}
