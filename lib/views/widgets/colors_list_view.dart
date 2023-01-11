import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 32,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 28,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 32,
          );
  }
}

class ColorsListView extends StatefulWidget {
  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xff006D77), //default اول لون يكون
    Color(0xff83C5BE),
    Color(0xffF4ACB7),
    Color(0xff9D8189),
    Color(0xffE29578),
    Color(0xff6A994E)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      //لازم احجمها
      height: 60,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = colors[index];
              setState(() {});
            },
            child: ColorItem(
              color: colors[index],
              isActive: currentIndex == index, // is mean true
            ),
          ),
        ),
        itemCount: colors.length,
      ),
    );
  }
}
