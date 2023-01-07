import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:nnoteapp/cubits/add_note/add_note_cubit.dart';
import 'add_note_form.dart';

class AddBottom extends StatelessWidget {
  const AddBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is AddNoteFailur) {
            print('error ${state.errMsg}');
          }
          if (state is AddNoteSucces) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading
                  ? true
                  : false, // ici on na pas besoin de cree var
              child: const AddNoteForm());
        },
      ),
    );
  }
}
