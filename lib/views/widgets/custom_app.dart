import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50,),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Notes',
              style: TextStyle(fontSize: 30),
            ),
          ),
          CustomIconSearch(),
        ],
      ),
    );
  }
}


