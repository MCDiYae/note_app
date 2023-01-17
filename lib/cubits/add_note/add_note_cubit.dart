// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:nnoteapp/constant.dart';

import '../../models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesbox = Hive.box<NoteModel>(noteBox);
      //c-a-d on stock data de type NoteModel
      await notesbox.add(note);
      emit(AddNoteSucces());
    } catch (e) {
      emit(AddNoteFailur(e.toString()));
    }
  }
}
