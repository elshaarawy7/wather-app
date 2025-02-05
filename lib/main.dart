import 'package:flutter/material.dart';
import 'package:wather_app/pages/sing_in.dart';

void main() {
  runApp(const WatherApp());
}

class WatherApp extends StatelessWidget {
  const WatherApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   //  theme: ThemeData.dark(),
     home: SingIn(),
    );
  }
}
