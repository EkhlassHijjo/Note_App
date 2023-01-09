import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';

class addNoteBottomSheet extends StatelessWidget {
  const addNoteBottomSheet({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteErrorState) {
            print('Error ${state.error}');
          }
          if (state is AddNoteSuccessState) {
           BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            // مش هتكتب ع الشاشة والعكس صحيح trueشكلياً اذا
            absorbing: state is AddNoteLoadingState ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  top: 20,
                  right: 20,
                  left: 20,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView( // لو ما عملتها بوتم شييت هياخد الصفحة كلها
                child: AddNoteForm(),
              ),
            ),
          );

          ///ملاحظة::انا عملت الدورة ع بوتم شييت كله بدي اعمله ع الزر فقط
          // return Container(
          //   height: 400,    // فوق عشان احجمها عند التغيير
          //   child: ModalProgressHUD(
          //     ///conditional or builder دائما هااي بعد ل
          //     inAsyncCall: true, //true: ظاهرة الدائرة
          //     child: Padding(
          //       padding: const EdgeInsets.all(20.0),
          //       child: SingleChildScrollView(
          //         child: AddNoteForm(),
          //       ),
          //     ),
          //   ),
          // );
        },
      ),
    );
  }
}
