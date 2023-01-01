import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'notes_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 15,
          ),
          CustomAppbar(
            texte: 'NOTE',
            icon: Icons.search,
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}
