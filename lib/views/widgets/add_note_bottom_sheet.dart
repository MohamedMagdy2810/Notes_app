import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_note_cubit_cubit.dart';

import 'package:notes_app/views/widgets/Custom_button.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class addNoteSheet extends StatelessWidget {
  const addNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubitCubit(),
      child: Padding(
        padding:  EdgeInsets.only(left: 16.0,right: 16,bottom: MediaQuery.of(context).viewInsets.bottom),
        child: BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
          listener: (context, state) {
            if (state is AddNoteCubitsuccsess) {
              Navigator.pop(context);
            }
            if (state is AddNoteCubitfailure) {
              print('failure ${state.errorMessage}');
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteCubitLoading ?true :false,
              child: const SingleChildScrollView(child: noteForm()));
          },
        ),
      ),
    );
  }
}
