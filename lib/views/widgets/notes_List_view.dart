import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    Key? key,
  }) : super(key: key);

//  final List data = const [
//   Color(0xFFFFCC80),
//   Colors.indigo,
//   Colors.cyanAccent,
//   Colors.tealAccent,
//   Colors.purpleAccent,
//  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: ListView.separated(
          padding: EdgeInsets.zero, // لانو الها بادينج الليست فيو 
          itemBuilder: (context, index) => NoteItem(),
          separatorBuilder: (context, index) => SizedBox(
            height: 10,
          ),
          itemCount: 5,
        ),
      ),
    );
  }
}
