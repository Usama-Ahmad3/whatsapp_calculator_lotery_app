import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:maintenance_box/login.dart';
import 'package:maintenance_box/widgets/controlerbutton.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class Controler extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var name;
  Controler(this.name, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Tab(
            child: IconButton(icon: Icon(Icons.logout,size: 35,),
            onPressed: () async {
              SharedPreferences pre = await SharedPreferences.getInstance();
              pre.clear();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Log_in_page(),));
            },
            ),
          )
        ],
        title: Row(
          children: [
            const Text(
              'Welcome',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              width: 2,
            ),
            AnimatedTextKit(animatedTexts: [
              RotateAnimatedText(name,
                  duration: const Duration(seconds: 7),
                  textStyle: const TextStyle(fontSize: 10))
            ])
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 12),
                width: double.infinity,
                height: 300,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(23)),
                ),
                child: Image.asset(
                  'assets/images/5421740_2840523.jpg',
                  fit: BoxFit.fill,
                )),
            const SizedBox(
              height: 30,
            ),
            const Whatsap(title: 'Whatsapp'),
            const SizedBox(
              height: 30,
            ),
            const Lotery(title: 'Lotery App'),
            const SizedBox(
              height: 30,
            ),
            const Calcult(title: 'Calculator'),
          ],
        ),
      ),
    );
  }
}
