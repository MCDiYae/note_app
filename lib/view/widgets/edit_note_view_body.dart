import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nnoteapp/cubits/notes%20cubit/notes_cubit.dart';
import 'package:nnoteapp/models/note_model.dart';
import 'package:nnoteapp/view/widgets/custom_appbar.dart';
import 'package:nnoteapp/view/widgets/custom_textfield.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppbar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = subtitle ?? widget.note.subtitle;
              widget.note.save(); // save mn hive
              // pour refresh
              BlocProvider.of<NotesCubit>(context).fetshAllNote();
              Navigator.pop(context);
            },
            texte: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.note.title),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              subtitle = subtitle;
            },
            hint: widget.note.subtitle,
            maxLines: 4,
          ),
        ],
      ),
    );
  }
}
