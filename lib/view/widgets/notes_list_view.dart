import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nnoteapp/cubits/notes%20cubit/notes_cubit.dart';

import 'notes_items.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 7,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: NoteItems(),
              );
            });
      },
    );
  }
}
