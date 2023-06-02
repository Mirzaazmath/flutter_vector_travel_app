import 'package:flutter/material.dart';
import 'package:vector_travel_app/screens/landingscreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:const  Color(0xff3f393e),
      ),

      home: const LandingScreen(),
    );
  }
}
