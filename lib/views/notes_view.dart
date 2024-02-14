import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_notes_item.dart';
import 'package:notes_app/views/widgets/note_list_view.dart';

class notesView extends StatelessWidget {
  const notesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return addNoteSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              customAppBar(
                title: 'Notes',
                icon: Icons.search,
              ),
              Expanded(child: notesListView())
            ],
          ),
        ),
      ),
    );
  }
}
