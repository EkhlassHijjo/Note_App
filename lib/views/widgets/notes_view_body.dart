import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app.dart';
import 'package:notes_app/views/widgets/notes_List_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,),
      child: Column(
        children: [
          CustomAppBar(title: 'Notes',icon: Icons.search,),
          NotesListView(),
        ],
      ),
    );
  }
}
