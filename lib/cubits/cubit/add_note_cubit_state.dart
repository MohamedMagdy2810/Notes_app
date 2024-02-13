part of 'add_note_cubit_cubit.dart';

@immutable
sealed class AddNoteCubitState {}

final class AddNoteCubitInitial extends AddNoteCubitState {}
final class AddNoteCubitLoading extends AddNoteCubitState {}
final class AddNoteCubitsuccsess extends AddNoteCubitState {}
final class AddNoteCubitfailure extends AddNoteCubitState {
  final String errorMessage;

  AddNoteCubitfailure( this.errorMessage);
}
