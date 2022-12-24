import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class addNoteBottomSheet extends StatelessWidget {
  const addNoteBottomSheet({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomTextField(),
        ],
      ),
    );
  }
}
