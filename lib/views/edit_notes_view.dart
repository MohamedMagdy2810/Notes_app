import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/edit_note_view_items.dart';

class editNoteView extends StatelessWidget {
  const editNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: editNoteViewItems(),
    );
  }
}