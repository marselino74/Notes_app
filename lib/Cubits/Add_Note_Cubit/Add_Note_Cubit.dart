import 'package:bloc/bloc.dart';
import 'package:notes_app/Cubits/add_note_cubit/add_note_State.dart';
import 'package:notes_app/Model/Note_Model.dart';

class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNotesIntial());

  addNote(NoteModel note){
    
  }
}
