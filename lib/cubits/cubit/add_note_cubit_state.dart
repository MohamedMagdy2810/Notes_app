part of 'add_note_cubit_cubit.dart';

@immutable
sealed class AddNoteCubitState {}

final class AddNoteCubitInitial extends AddNoteCubitState {}
final class AddNoteCubitLoading extends AddNoteCubitState {}
final class AddNoteCubitsucsess extends AddNoteCubitState {}
final class AddNoteCubitfaliar extends AddNoteCubitState {
  final String errorMessage;

  AddNoteCubitfaliar( this.errorMessage);
}