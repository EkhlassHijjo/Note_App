abstract class AddNoteState {}

class AddNoteInitialState extends AddNoteState {}

class AddNoteLoadingState extends AddNoteState {} // future لو في عندي حاجة

class AddNoteSuccessState extends AddNoteState {}

class AddNoteErrorState extends AddNoteState {
 final String error;
  AddNoteErrorState(this.error);
}
