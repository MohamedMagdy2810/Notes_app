import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_notes_item.dart';

class notesListView extends StatelessWidget {
  const notesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(itemBuilder: ( context, index){
      
      return const customNotesItem();
    },
    itemCount: 15,);
  }
}
