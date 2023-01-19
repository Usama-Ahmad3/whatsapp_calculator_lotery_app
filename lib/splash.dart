import 'dart:async';

import 'package:flutter/Material.dart';
import 'package:maintenance_box/controller.dart';
import 'package:maintenance_box/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget{
  const Splash({super.key});

  @override
  State<StatefulWidget> createState() => SplashState();
}
class SplashState extends State<Splash>{

  @override
  void initState() {
    super.initState();
    go();
  }
  go() async{
    String uname = "";
    SharedPreferences pre = await SharedPreferences.getInstance();
    uname = pre.getString('username')??"";
    bool islogedin = pre.getBool('IsLogedIn')??false;
    if(islogedin){
      Timer(const Duration(seconds: 3),() => Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Controler(uname),)),);}
    else{
      Timer(const Duration(seconds: 3),() => Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const Log_in_page(),)),);}
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade100,
     bottomSheet: Container(
       color: Colors.deepOrange.shade100,
       child: Padding(
         padding: const EdgeInsets.only(bottom: 100.0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: const [
             Text('Powered By Usama'),
             SizedBox(width: 20,),
             Icon(Icons.accessibility)
           ],
         ),
       ),
     ),
     primary: true,
     body: Center(
       child: Image.asset('assets/images/5421740_2840523.jpg'),
     ),
    );
  }
}