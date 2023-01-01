import 'package:flutter/material.dart';
import 'package:nnoteapp/view/widgets/custom_appbar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppbar(
            texte: 'Edit Note',
            icon: Icons.check,
          )
        ],
      ),
    );
  }
}
