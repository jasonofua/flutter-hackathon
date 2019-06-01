import 'package:flutter/material.dart';
import 'package:life_line/Activities/Onboarding.dart';

void main(){
  runApp(new MaterialApp(

    theme: ThemeData(primaryColor: Colors.blueAccent,accentColor: Colors.white),
    debugShowCheckedModeBanner: false,
    home: new Onboarding(),

  ));
}