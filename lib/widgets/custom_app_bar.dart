import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_note_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 32,
      ),
      Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 24),
          ),
          const Spacer(),
          CustomSearchIcon(
            icon: icon,
          ),
        ],
      ),
    ]);
  }
}
