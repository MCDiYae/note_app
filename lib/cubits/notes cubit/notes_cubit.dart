import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../constant.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetshAllNote() async {
    emit(NotesLoading());
    try {
      var notesbox = Hive.box<NoteModel>(noteBox);
      //c-a-d on stock data de type NoteModel
      List<NoteModel> notes =
          notesbox.values.toList(); // ici on obtient la liste des notes
      emit(NotesSucces(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
// et je vais ajouter ce cubit dans notes view