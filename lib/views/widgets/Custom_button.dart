import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit_cubit.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.onTap, required this.text,this.isLoading =false});
  final String text;
  VoidCallback? onTap;
  bool isLoading ;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubitCubit, AddNoteCubitState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: PrimaryColor, borderRadius: BorderRadius.circular(12)),
            child: Center(
                child:state is AddNoteCubitLoading ?   CircularProgressIndicator():Text(
              text,
              style: TextStyle(color: Colors.black, fontSize: 20),
            )),
          ),
        );
      },
    );
  }
}
