import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class addNoteSheet extends StatelessWidget {
  const addNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16.0),
      child: Column(
        children: [
          SizedBox(height: 40,),
         CustomTextField(hintText: 'note'),
         
        ],
      ),
    );
  }
}
