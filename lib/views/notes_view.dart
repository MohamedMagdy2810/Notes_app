import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_notes_item.dart';
import 'package:notes_app/views/widgets/note_list_view.dart';

class notesView extends StatelessWidget {
  const notesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context){
          return addNoteSheet();
        }
      },child:const Icon(Icons.add),),
      body:const  Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            customAppBar(),
            
            Expanded(child: notesListView())
          ],
        ),
      ),
    );
  }
}
