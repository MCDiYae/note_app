import 'package:flutter/material.dart';
import 'package:nnoteapp/view/edit_note_view.dart';

class NoteItems extends StatelessWidget {
  const NoteItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const EditNoteView();
          }),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'study',
                style: TextStyle(fontSize: 26, color: Colors.black),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Striving for success without hard work is like trying to harvest where you haven t planted ',
                  style: TextStyle(fontSize: 18, color: Colors.black38),
                ),
              ),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Text(
                '2020',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black38,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}