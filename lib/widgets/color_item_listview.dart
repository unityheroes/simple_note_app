import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_note_app/appsetting.dart';
import 'package:simple_note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:simple_note_app/widgets/color_item.dart';

class ColorItemListview extends StatefulWidget {
  const ColorItemListview({super.key});

  @override
  State<ColorItemListview> createState() => _ColorItemListviewState();
}

class _ColorItemListviewState extends State<ColorItemListview> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
      child: SizedBox(
        height: 48,
        child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).colors =
                      kColors[index];
                });
              },
              child: ColorItem(
                isSelected: currentIndex == index,
                color: kColors[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
