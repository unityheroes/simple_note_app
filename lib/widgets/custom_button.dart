import 'package:flutter/material.dart';
import 'package:simple_note_app/appsetting.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: kPrimaryColor.withAlpha(80),
            gradient: LinearGradient(
              colors: [
                Colors.white.withAlpha(16),
                Colors.white.withAlpha(32),
                Colors.white.withAlpha(64),
                Colors.white.withAlpha(128),
              ],
            ),
          ),
          height: 64,
          child: const Center(
            child: Text(
              "Add",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
