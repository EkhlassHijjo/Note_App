import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitialState());

  List<NoteModel>? notes;

  void fetchAllNotes() {
    var noteBox = Hive.box<NoteModel>(kNotesBox);
    notes = noteBox.values.toList();
    // emit(NotesSuccessState(notes!)); //await مش هنحتاجها لانو هيك هيك البيانات هتيجي مش
  }
  // طريقة اخرى 
  // void fetchAllNotes() {
  //   var noteBox = Hive.box<NoteModel>(kNotesBox);
  //   List<NoteModel> notes = noteBox.values.toList();
  //   emit(NotesSuccessState(notes));
  // }

  /// طريقة أخرى
  // معنديش await هنا
  // void fetchAllNotes() {
  //   try {
  //     var noteBox = Hive.box<NoteModel>(kNotesBox);
  //     List<NoteModel> notes = noteBox.values.toList();
  //     emit(NotesSuccessState(notes));
  //   } catch (error) {
  //     emit(NotesErrorState(error.toString()));
  //   }
  // }
}
