import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';

class notesView extends StatelessWidget {
  const notesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:16.0),
        child: Column(
          
          children: [
            SizedBox(height: 30,),
            customAppBar()],
        ),
      ),
    );
  }
}
