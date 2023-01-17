import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes cubit/notes_cubit.dart';
import 'custom_appbar.dart';
import 'notes_list_view.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  @override
  void initState() {
   BlocProvider.of<NotesCubit>(context).fetshAllNote();
    super.initState();
  }
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
