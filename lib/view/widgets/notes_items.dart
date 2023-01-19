import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nnoteapp/cubits/notes%20cubit/notes_cubit.dart';
import 'package:nnoteapp/models/note_model.dart';
import 'package:nnoteapp/view/edit_note_view.dart';

class NoteItems extends StatelessWidget {
  const NoteItems({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return EditNoteView(
              note: note,
            );
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
              title: Text(
                note.title,
                style: const TextStyle(fontSize: 26, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  note.subtitle,
                  style: const TextStyle(fontSize: 18, color: Colors.black38),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete(); // simplement on sup les note
                    BlocProvider.of<NotesCubit>(context).fetshAllNote;
                  },
                  icon: const Icon(Icons.delete)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                note.date,
                style: const TextStyle(
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
