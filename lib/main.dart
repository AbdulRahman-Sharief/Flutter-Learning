import 'package:flutter/material.dart';
import 'package:myfirstapp/home_screen.dart';
import 'package:myfirstapp/login_screen.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget
{
@override
  Widget build(BuildContext context){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen()
  );
}
}

