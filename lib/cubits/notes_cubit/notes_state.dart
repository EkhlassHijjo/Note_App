import 'package:notes_app/models/note_model.dart';

abstract class NotesState {}

class NotesInitialState extends NotesState {}
 
///ما بحتاجهم 
// class NotesLoadingState extends NotesState {}

// class NotesSuccessState extends NotesState {
// final List<NoteModel> notes ;
// NotesSuccessState(this.notes);
// }

// class NotesErrorState extends NotesState {
//   final String error;
//   NotesErrorState(this.error);
// }
