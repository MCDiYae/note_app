import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'notes_items.dart';

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
          CustomAppbar(),
          SizedBox(
            height: 30,
          ),
          NoteItems()
        ],
      ),
    );
  }
}
