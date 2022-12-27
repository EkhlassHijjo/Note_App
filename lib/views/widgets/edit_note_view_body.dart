import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(title: 'Edit Note',icon: Icons.check),
        ],
      ),
    );
  }
}
