import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hint,
    this.maxLines = 1,
    this.onSaved, this.onChanged,
  }) : super(key: key);

  final String hint; // عشان الكونستركتر تابث
  final int maxLines;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (value) {
        if (value?.isEmpty ?? true) { //? null ومش null احتمال 
          return 'Feile is requiered';
        } else {
          return null;
        }
      },
      ///// بصيغة أخرى
      // validator: (value) {
      //   if (value!.isEmpty) {     //null متأكدة القيمة مش
      //     return 'Feile is requiered';
      //   } else {
      //     return null;
      //   }
      // },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: kPrimaryColor,
        ),
        // border: InputBorder.none,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    // not named dynamic بتاخد null غير هيك لازم ؟
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: color ?? Colors.white, // not null (موجود) ?? null (فاضي)
      ),
    );
  }
}
