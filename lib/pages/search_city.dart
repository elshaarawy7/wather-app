import 'package:flutter/material.dart';

class SearchCity extends StatelessWidget {
  const SearchCity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Search for your city" , style: TextStyle(
          color: Colors.white , 
          fontSize: 20 ,
          fontWeight: FontWeight.bold
        ), ),
        centerTitle: true,
      ),
    );
  }
}