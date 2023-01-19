import 'package:flutter/Material.dart';

class Buttons extends StatefulWidget{
  // ignore: prefer_typing_uninitialized_variables
  final title;
  final Color? color;
  final VoidCallback onpress;
  const Buttons({super.key, required this.title,this.color,required this.onpress});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 12.0),
      child: InkWell(
        onTap: widget.onpress,
        child: Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            color: widget.color,
            shape: BoxShape.circle
          ),
          child: Center(child: Text(widget.title,style: const TextStyle(fontSize: 30,color: Colors.white),)),
    ),
      ));
  }
}