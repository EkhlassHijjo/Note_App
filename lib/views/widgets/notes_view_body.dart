import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          CustomAppBar(),
          NotesListView(),
        ],
      ),
    );
  }
}

class NotesListView extends StatelessWidget {
  const NotesListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => NoteItem(),
        separatorBuilder: (context, index) => SizedBox(
          height: 15,
        ),
        itemCount: 10,
      ),
    );
  }
}
