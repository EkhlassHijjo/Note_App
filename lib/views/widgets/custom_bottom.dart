import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    Key? key,
    this.onPressed,
    this.isLoading = false,
  }) : super(key: key);

  final void Function()? onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, // يناسب حجم الشاشات
      height: 55,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: isLoading
            ? SizedBox(
                height: 30,
                width: 30,
                child: CircularProgressIndicator(
                  color: Colors.black38,
                ),
              )
            : Text(
                'Add ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
