import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_notes_item.dart';

class notesView extends StatelessWidget {
  const notesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child:const Icon(Icons.add),),
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
