import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/models/note_model.dart';
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
    return BlocBuilder<NotesCubit, NotesState>(builder: (context, State) {
      List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
      // var notes = BlocProvider.of<NotesCubit>(context).notes!;
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: ListView.separated(
          padding: EdgeInsets.zero, // لانو الها بادينج الليست فيو
          itemBuilder: (context, index) => NoteItem(
            model: notes[index],
          ),
          separatorBuilder: (context, index) => SizedBox(
            height: 10,
          ),
          // itemCount: State is NotesSuccessState ? State.notes.length : 0,
          // itemCount: BlocProvider.of<NotesCubit>(context).notes!.length,
          itemCount: notes.length,
        ),
      );
    });
  }
}
