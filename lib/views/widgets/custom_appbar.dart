import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key, required this.title, required this.icon});
final String title;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children:  [
        Text(title,style: TextStyle(fontSize: 28),),
       const Spacer(),
        customSearchIcon(icon:icon,)
      ],
    );
  }
}

