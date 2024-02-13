import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class editNoteViewItems extends StatelessWidget {
  const editNoteViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal:16.0),
      child:   Column(
        children: [
        const  SizedBox(height: 50,),
         const customAppBar(title: 'Edit notes', icon: Icons.check),
         const SizedBox(height: 50,),
          CustomTextField(hintText: 'title',),
          SizedBox(height: 16,),
          CustomTextField(hintText: 'content',maxLines: 5,)
        ],
      ),
    );
  }
}