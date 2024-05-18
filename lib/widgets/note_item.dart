import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.yellow.withAlpha(16),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            title: const Text(
              'Note 1 ',
              style: TextStyle(fontSize: 32),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'Finish this task today before 5 PM',
                style:
                    TextStyle(fontSize: 16, color: Colors.white.withAlpha(128)),
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.white.withAlpha(128),
                size: 32,
              ),
              onPressed: () {},
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(right: 32, top: 8),
              child: Text(
                "5/15/2024",
                style: TextStyle(fontSize: 12),
              )),
        ],
      ),
    );
  }
}
