import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
   fetchNotes()async {
    
    try {
  var notePox = Hive.box<NoteModel>(knotesPox);
  List<NoteModel> notes = notePox.values.toList();
  
     
     emit(NotesSuccess(notes));
}  catch (e) {
 emit(NotesFailure(e.toString()));
}
  }
}
