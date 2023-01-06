import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
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
      emit(AddNoteSucces());
      await notesbox.add(note);
    } catch (e) {
      AddNoteFailur(e.toString());
    }
  }
}
