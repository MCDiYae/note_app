import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nnoteapp/cubits/notes%20cubit/notes_cubit.dart';
import 'package:nnoteapp/view/widgets/bottom_add.dart';
import 'package:nnoteapp/view/widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        body: const NoteViewBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context, builder: (context) => const AddBottom());
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
