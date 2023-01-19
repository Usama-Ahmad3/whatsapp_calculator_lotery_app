
import 'package:flutter/Material.dart';
import 'dart:math';

class Second extends StatefulWidget{
  const Second({super.key});

  @override
  State<Second> createState() => SecondState();
}

class SecondState extends State<Second> {
 Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(15);
            setState(() {
            });
          },
          clipBehavior: Clip.antiAlias,
          child: const Icon(Icons.refresh_rounded,size: 35,),
        ),
        appBar: AppBar(
          title: const Text('Lottery App'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(child: Text('Lottery Winning Number Is 4',style: TextStyle(fontSize: 20),)),
            const SizedBox(height: 20,),
            Container(
              width: 260,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(15)
              ),
              child: x == 4 ? Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.done_all,color: Colors.green),
                    const SizedBox(
                      height: 20,
                    ),
                    Text('Congrats You Won The Lottery \n Your Number Is $x',style: const TextStyle(fontSize: 15),)
                  ],
                ),
              ):Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.error,color: Colors.red,),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('Better Luck Next Time Your NO. Is $x\nTry Again'),
                ],
              ),
            )
          ],
        ),
      )
    );
  }

  }