import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
   addNote(NoteModel note)async {
    
    try {
  var notePox = Hive.box<NoteModel>(knotesPox);
  
     await notePox.add(note);
     emit(NotesSuccess());
}  catch (e) {
 emit(NotesFailure(errorMessage: e.toString()));
}
  }
}
