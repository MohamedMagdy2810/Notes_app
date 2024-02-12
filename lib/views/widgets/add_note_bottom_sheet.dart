import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/Custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class addNoteSheet extends StatelessWidget {
  const addNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40,),
           CustomTextField(hintText: 'note'),
             SizedBox(height: 16,),
           CustomTextField(hintText: 'Content',maxLines: 5,),
        SizedBox(height: 50,),
        CustomButton(text: 'Add'),
         SizedBox(height: 32,),
          
        
           
          ],
        ),
      ),
    );
  }
}
