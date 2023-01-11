import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nnoteapp/constant.dart';
import 'package:nnoteapp/cubits/add_note/add_note_cubit.dart';
import 'package:nnoteapp/simple_bloc_observer.dart';
import 'package:nnoteapp/view/note_view.dart';

import 'models/note_model.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = MyBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(noteBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const NoteView(),
    );
  }
}
