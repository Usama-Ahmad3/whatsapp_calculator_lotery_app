
import 'package:flutter/material.dart';
import 'package:maintenance_box/splash.dart';

main(){
  runApp(const LogIn());
}
class LogIn extends StatelessWidget{
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home:const Splash(),
    );
  }
}