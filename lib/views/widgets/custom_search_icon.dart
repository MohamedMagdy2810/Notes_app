import 'package:flutter/material.dart';

class customSearchIcon extends StatelessWidget {
  const customSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
      color: Colors.white.withOpacity(.06)),
      child:const  Center(
        child: Icon(Icons.search,size: 28,),
      ),
    );
  }
}