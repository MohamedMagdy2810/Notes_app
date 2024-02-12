import 'package:hive/hive.dart';

part 'notes_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String supTitle;
  @HiveField(2)
  final int color;
  @HiveField(3)
  final String date;

  NoteModel({required this.title, required this.supTitle, required this.color, required this.date});
}