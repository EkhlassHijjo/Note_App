import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';

class EditNoteColorsList extends StatefulWidget {
  EditNoteColorsList({
    Key? key,
    required this.note,
  }) : super(key: key);
  final NoteModel note;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38 * 2,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.color = kColors[index].value;
              setState(() {});
            },
            child: ColorItem(
              color: kColors[index],
              isActive: currentIndex == index, // is mean true
            ),
          ),
        ),
        itemCount: kColors.length,
      ),
    );
  }
}
