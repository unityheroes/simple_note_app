import 'package:flutter/material.dart';

import 'package:simple_note_app/appsetting.dart';

import 'package:simple_note_app/models/note_model.dart';
import 'package:simple_note_app/widgets/color_item.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.noteModel});

  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
  final NoteModel noteModel;
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.noteModel.color));
    super.initState();
  }

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
                  widget.noteModel.color = kColors[index].value;
                  setState(() {});
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
