import 'package:flutter/material.dart';
import 'package:nnoteapp/view/widgets/bottom_add.dart';
import 'package:nnoteapp/view/widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NoteViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context, 
              builder: (context) => const AddBottom());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
