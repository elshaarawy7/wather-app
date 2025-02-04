import 'package:flutter/material.dart';

class Text_From_Fiel extends StatelessWidget {
  const Text_From_Fiel({super.key, required this.obscureText, required this.hintext});
  final bool obscureText ;
  final String hintext ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if(value == null || value.isEmpty){
          return "please Enter ther $hintext";
        }
      }, 
      obscureText:obscureText ,
      decoration: InputDecoration(
        hintText: hintext ,
        border: OutlineInputBorder()
      ),
    );
  }
}