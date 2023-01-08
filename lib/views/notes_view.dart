import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit()..fetchAllNotes(),
      child: Scaffold(
        body: NotesViewBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true, // viewInsets كلها تطلع مع ال bottom sheet
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              context: context,
              builder: (context) => addNoteBottomSheet(),
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
