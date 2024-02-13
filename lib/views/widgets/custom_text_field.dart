import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField(
      { required this.hintText, this.obsecureText = false,  this.maxLines = 1, this.onSaved});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  bool obsecureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      cursorColor: PrimaryColor,
      obscureText: obsecureText,
      validator: (data) {
        if (data?.isEmpty ??true) {
          return 'failed is requried';
        }else{
          return null;
        }
      },
      onSaved: onSaved,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color:PrimaryColor),
         border: buildBorder(),
          enabledBorder:buildBorder(),
          focusedBorder: buildBorder(PrimaryColor),
         ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color:color?? Colors.white ));
  }
}
