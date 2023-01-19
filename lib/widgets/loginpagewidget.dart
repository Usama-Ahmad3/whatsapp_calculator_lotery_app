
import 'package:flutter/Material.dart';
import 'package:maintenance_box/login.dart';

class textfield2 extends StatefulWidget{
  @override
  State<textfield2> createState() => _textfield2State();
}

class _textfield2State extends State<textfield2> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: Log_in_page.pass,
        validator: (value){
          if(value!.isEmpty){
            return 'password cannot empty';
          }
          else if(value.length < 6){
            return 'password must be 6 digits';
          }
          return null;
        },
        keyboardType: TextInputType.number,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: '123456',
          labelText: 'Password',
          fillColor: Colors.grey.shade300,
          filled: true,
          suffixIcon: InkWell(
              onTap: (){
                if(obscure){
                  obscure = false;
                }
                else{
                  obscure = true;
                }
                setState(() {});
              },
              child:Icon(Icons.remove_red_eye_rounded,color: Colors.white,)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)
          ),
        ));
  }
}
textfield1 (){
  return TextFormField(
    controller:Log_in_page.name,
    validator: (value){
      if(value!.isEmpty){
        return 'username cannot empty';
      }
      return null;
    },
    decoration: InputDecoration(
        hintText: 'Usama123@gmail.com',
        labelText: 'Email',
        fillColor: Colors.grey.shade300,
        filled: true,
        prefixIcon: const Icon(Icons.email,color: Colors.white,),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15)
        )
    ),
  );
}