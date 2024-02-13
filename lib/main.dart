import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';


import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(knotesPox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ((context) => AddNoteCubitCubit()),),
      ],
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
        home: const notesView(),
        theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'),
        
      ),
    );
  }
}
