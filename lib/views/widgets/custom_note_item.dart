import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/edit_note_view.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    Key? key,
    required this.model,
  }) : super(key: key);
  final NoteModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EditNoteView()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        decoration: BoxDecoration(
          // color: Color(0xFFFFCC80),
          color: Color(model.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                '${model.title}',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  model.subTitle,
                  style:
                      // Theme.of(context).textTheme.bodyText1!.copyWith(
                      //       color: Colors.black.withOpacity(0.4),
                      //     ),
                      TextStyle(
                          color: Colors.black.withOpacity(0.5), fontSize: 18),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  model.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: Icon(
                  FontAwesomeIcons
                      .trash, //مكتبة لايقونات متعددة حلوة بالاستخدام
                  size: 25,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              model.date,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(0.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
