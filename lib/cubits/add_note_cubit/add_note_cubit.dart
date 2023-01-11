import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitialState());
  Color? color = Color(0xff006D77);
  addNote(NoteModel model) async {
    model.color = color!.value;
    emit(AddNoteLoadingState());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      // Hive.box(kNotesBox).add() صيغة اخرى بدل المتغير
      await noteBox.add(model); //  add بتاخد dynamic
      emit(AddNoteSuccessState());
    } on Exception catch (error) {
      emit(AddNoteErrorState(error.toString()));
    }
  }
}
