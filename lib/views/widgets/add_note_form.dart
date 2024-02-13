
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/Custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class noteForm extends StatefulWidget {
  const noteForm({
    super.key,
  });

  @override
  State<noteForm> createState() => _noteFormState();
}

class _noteFormState extends State<noteForm> {


final GlobalKey<FormState> formKey =GlobalKey();
AutovalidateMode autovalidate =AutovalidateMode.disabled;
  String? title,supTitle ;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidate,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomTextField(hintText: 'note',
          onSaved: (value) {
            title = value;
          } ,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: 'Content',
            onSaved: (value) {
            supTitle = value;
          } ,
            maxLines: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(text: 'Add',
          onTap: (){
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
              
            }
            else{
              autovalidate =AutovalidateMode.always;
              setState(() {
                
              });
            }
          },),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}

