import 'package:flutter/material.dart';
import 'package:simple_note_app/widgets/color_item.dart';

class ColorItemListview extends StatefulWidget {
  const ColorItemListview({super.key});

  @override
  State<ColorItemListview> createState() => _ColorItemListviewState();
}

class _ColorItemListviewState extends State<ColorItemListview> {
  List<Color> colors = [
    const Color(0xffE6E8E6),
    const Color(0xff3772FF),
    const Color(0xffFDCA40),
    const Color(0xffDF2935),
    const Color(0xff080708),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
      child: SizedBox(
        height: 48,
        child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: ColorItem(
                isSelected: currentIndex == index,
                color: colors[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
