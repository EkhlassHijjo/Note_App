import 'package:flutter/material.dart';

class CustomIconSearch extends StatelessWidget {
  const CustomIconSearch({Key? key, required this.icon, this.onPressed}) : super(key: key);
  final IconData? icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(16)),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 28,
        ),
      ),
    );
  }
}
