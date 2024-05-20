import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon(
      {super.key, required this.icon, required this.onPressed});
  final VoidCallback onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.white.withAlpha(10),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
          child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                size: 32,
              ))),
    );
  }
}
