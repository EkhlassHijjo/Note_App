import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.blue,
      radius: 30,
    );
  }
}

class ColorsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //لازم احجمها
      height: 60,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ColorItem(),
        itemCount: 10,
      ),
    );
  }
}
