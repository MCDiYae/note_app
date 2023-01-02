import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nnoteapp/constant.dart';
import 'package:nnoteapp/view/note_view.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(noteBox);
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
