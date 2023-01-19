import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/Material.dart';
import 'package:maintenance_box/widgets/calculatorbutton.dart';

class Calculator extends StatefulWidget{
  const Calculator({super.key});

  @override
  State<StatefulWidget> createState() => CalculatState();
}
class CalculatState extends State<Calculator>{
  var input = "";
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right:35.0),
              child: Text(input.toString(),style: const TextStyle(fontSize: 30),textAlign: TextAlign.end),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50,right: 35),
              child: Text(result.toString(),style: const TextStyle(fontSize: 50),),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Buttons(title: 'AC',color: Colors.grey,onpress: (){
                      input  = '';
                      result = '';
                      setState((){});
                    },),
                    Buttons(title: '+/-',color: Colors.grey,onpress: (){
                      input += '+/-';
                      setState((){});
                    },),
                    Buttons(title: '%',color: Colors.grey,onpress: (){
                      input += '%';
                      setState((){});
                    },),
                    Buttons(title: '/',color: Colors.orange,onpress: (){
                      input += '/';
                      setState((){});
                    },)
                  ],
                ),
                Row(
                  children: [
                    Buttons(title: '7',color: Colors.grey,onpress: (){
                      input += '7';
                      setState((){});
                    },),
                    Buttons(title: '8',color: Colors.grey,onpress: (){
                      input += '8';
                      setState((){});
                    },),
                    Buttons(title: '9',color: Colors.grey,onpress: (){
                      input += '9';
                      setState((){});
                    },),
                    Buttons(title: 'x',color: Colors.orange,onpress: (){
                      input += 'x';
                      setState((){});
                    },),
                  ],
                ),
                Row(
                  children: [
                    Buttons(title: '4',color: Colors.grey,onpress: (){
                      input += '4';
                      setState((){});
                    },),
                    Buttons(title: '5',color: Colors.grey,onpress: (){
                      input += '5';
                      setState((){});
                    },),
                    Buttons(title: '6',color: Colors.grey,onpress: (){
                      input += '6';
                      setState((){});
                    },),
                    Buttons(title: '-',color: Colors.orange,onpress: (){
                      input += '-';
                      setState((){});
                    },),
                  ],
                ),
                Row(
                  children: [
                        Buttons(title: '1',color: Colors.grey,onpress: (){
                          input += '1';
                          setState((){});
                        },),
                        Buttons(title: '2',color: Colors.grey,onpress: (){
                          input += '2';
                          setState((){});
                        },),
                        Buttons(title: '3',color: Colors.grey,onpress: (){
                          input += '3';
                          setState((){});
                        },),
                        Buttons(title: '+',color: Colors.orange,onpress: (){
                          input += '+';
                          setState((){});
                        },),
                  ],
                ),
                Row(
                  children: [
                    Buttons(title: '0',color: Colors.grey,onpress: (){
                      input += '0';
                      setState((){});
                    },),
                    Buttons(title: '.',color: Colors.grey,onpress: (){
                      input += '.';
                      setState((){});
                    },),
                    Buttons(title: 'DEL',color: Colors.grey,onpress: (){
                    input = input.substring(0,input.length-1);
                      setState(() {});
                    },),
                    Buttons(title: '=',color: Colors.orange,onpress: (){
                      equalto();
                      setState(() {});
                    },),
                  ],
                ),
                const SizedBox(height: 10,)
              ],
            ),
          ],
        ),
      )
    );
  }
  equalto(){
    String userinput = input.replaceAll('x','*');
   Parser p = Parser();
   Expression expression = p.parse(userinput);
   ContextModel contextModel = ContextModel();
   double eval = expression.evaluate(EvaluationType.REAL, contextModel);
   result = eval.toString();
  }
}