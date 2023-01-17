// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../constant.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetshAllNote() {
    var notesbox = Hive.box<NoteModel>(noteBox);
    notes = notesbox.values.toList(); // ici on obtient la liste des notes
  }
}
// et je vais ajouter ce cubit dans notes view