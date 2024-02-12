import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_notes_view.dart';

class customNotesItem extends StatelessWidget {
  const customNotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:16.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return editNoteView();
          }));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color:const Color(0xffFFCD7A)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title:const Padding(
                  padding:  EdgeInsets.only(top: 16.0, bottom: 16, ),
                  child: Text(
                    'Flutter Tips',
                    style: TextStyle(color: Colors.black, fontSize: 28),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(bottom: 16,top: 16),
                  child: Text(
                    'Mohamed Magdy Mohamed Abdo Elsayed Gezar',
                    style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 18),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon:const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:16.0,bottom: 16,),
                child: Text(
                  'oct 28/2002',
                  style: TextStyle(color: Colors.black.withOpacity(.5)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
