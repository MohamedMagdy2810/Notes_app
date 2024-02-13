import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  addNote(NoteModel note)async {
    emit(AddNoteCubitLoading());
    try {
  var notePox = Hive.box<NoteModel>(knotesPox);
  emit(AddNoteCubitsuccsess());
     await notePox.add(note);
     
}  catch (e) {
 AddNoteCubitfailure(e.toString());
}
  }
}
