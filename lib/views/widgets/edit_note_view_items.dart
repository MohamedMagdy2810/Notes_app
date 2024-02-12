import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';

class editNoteViewItems extends StatelessWidget {
  const editNoteViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal:16.0),
      child:   Column(
        children: [
          SizedBox(height: 30,),
          customAppBar(title: 'Edit notes', icon: Icons.check)
        ],
      ),
    );
  }
}