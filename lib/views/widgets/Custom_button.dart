import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
   CustomButton({this.onTap, required this.text});
final String text ;
VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: PrimaryColor, borderRadius: BorderRadius.circular(12)),
              child:  Center(
                  child: Text(
               text,
                style: TextStyle(
                    color: Colors.black,fontSize: 20),
              )),
            ),
    );
  }
}