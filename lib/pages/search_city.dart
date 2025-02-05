import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:wather_app/model/wather_Modal.dart';
import 'package:wather_app/pages/wather_page_ui.dart';
import 'package:wather_app/services/wather_Servcies.dart';

class SearchCity extends StatelessWidget {
  const SearchCity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              TextField(
                onSubmitted: (value) async {
                  WatherModal watherModal = await
                  WatherServcies(Dio()).getCurrntWather(CityName: value);
                  log(WatherModal.cityName);
                }, 
                decoration:const InputDecoration(
                  hintText:" search for your city " ,
                  border: OutlineInputBorder(),
                ),
                
              ), 

              const  SizedBox(height: 20,),

                 MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return WeatherAppUI();
                    }));
                  },
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