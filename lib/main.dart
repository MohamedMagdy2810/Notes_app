import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';


import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/simble_bloce_observer.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(knotesPox);
  
  Bloc.observer=  simbleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: const notesView(),
      theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'),
      
    );
  }
}
