import 'package:bloc/bloc.dart';

class NotesCubit extends Cubit<NotesState>{
  NotesCubit() : super(NotesIntial());
}