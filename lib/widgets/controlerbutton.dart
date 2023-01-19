import 'package:flutter/Material.dart';
import 'package:maintenance_box/calculator.dart';
import 'package:maintenance_box/second.dart';
import 'package:maintenance_box/whatsapp.dart';

// ignore: camel_case_types
class Whatsap extends StatelessWidget {
  final String title;
  const Whatsap({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.teal,
      elevation: 2.0,
      clipBehavior: Clip.antiAlias,
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Whatsapp(),
                ));
          },
          style: TextButton.styleFrom(fixedSize: const Size(200, 50)),
          child: Text(
            title,
            style: const TextStyle(fontSize: 30),
          )),
    );
  }
}

class Lotery extends StatelessWidget {
  final String title;
  const Lotery({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.teal,
      elevation: 2.0,
      clipBehavior: Clip.antiAlias,
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Second(),
                ));
          },
          style: TextButton.styleFrom(fixedSize: const Size(200, 50)),
          child: Text(
            title,
            style: const TextStyle(fontSize: 30),
          )),
    );
  }
}

class Calcult extends StatelessWidget {
  final String title;
  const Calcult({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.teal,
      elevation: 2.0,
      clipBehavior: Clip.antiAlias,
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Calculator(),
                ));},
          style: TextButton.styleFrom(fixedSize: const Size(200, 50)),
          child: Text(
            title,
            style: const TextStyle(fontSize: 30),
          )),
    );
  }
}
