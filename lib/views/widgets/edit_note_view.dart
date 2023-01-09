import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({
    Key? key, required this.model3,
  }) : super(key: key);
  final NoteModel model3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(model4: model3),
    );
  }
}
