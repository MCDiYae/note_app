import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nnoteapp/cubits/notes%20cubit/notes_cubit.dart';

import '../../models/note_model.dart';
import 'notes_items.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes;
        notes = BlocProvider.of<NotesCubit>(context).notes!;
        return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: NoteItems(
                  note: notes[index],
                  index: index,
                ),
              );
            });
      },
    );
  }
}
