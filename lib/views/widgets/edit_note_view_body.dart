import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';
import 'package:notes_app/views/widgets/custom_app.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/edit_note_colore_list_view.dart';

class EditNoteViewBody extends StatelessWidget {
  EditNoteViewBody({
    Key? key,
    required this.model4,
  }) : super(key: key);
  final NoteModel model4;
  String? title, content; // StateFul عرفتيهم ك متغير ولازم احولها ل
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              //بصورة اخرى
              if (title != null) {
                model4.title = title!; //null تأكدت انو مش ب
              } else {
                model4.title;
              }
              // model4.title = title ?? model4.title; // معناها مش نل نفذ ب نل خليها متل مهي
              model4.subTitle = content ?? model4.subTitle;
              model4.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(
            hint: model4.title,
            onChanged: (value) {
              // عشان تعدلي عليها
              title = value;
            },
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            onChanged: (value) {
              //  model4.subTitle = content ?? model4.subTitle; // ممكن اكتبها هان صح جدا
              content = value;
            },
            hint: model4.subTitle,
            maxLines: 5,
          ),
          SizedBox(
            height: 20,
          ),
          EditNoteColorsList(note: model4),
        ],
      ),
    );
  }
}

