import 'package:flutter/material.dart';
import 'package:wather_app/widgets/text_field.dart';

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

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const Text_From_Fiel(
                obscureText: false, 
                hintext:" Search for your city " , 
                ), 

              const  SizedBox(height: 20,),

                 MaterialButton(
                  onPressed: (){},
                  height: 75,
                  minWidth: 200 ,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22)
                  ), 
                  child: const Text("search" , style: TextStyle(
                    color: Colors.white , 
                    fontSize: 20 , 
                    fontWeight: FontWeight.bold
                  ),),
                 ) ,

            ],
          ),  
            
        ),
      ),
    );
  }
}