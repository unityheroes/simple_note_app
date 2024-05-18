import 'package:flutter/material.dart';
import 'package:simple_note_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Simple Note App",
          style: TextStyle(fontSize: 24),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
