import 'package:flutter/Material.dart';
import 'package:maintenance_box/controller.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:maintenance_box/widgets/forget_password.dart';
import 'package:maintenance_box/widgets/sign_up.dart';
import 'package:maintenance_box/widgets/loginpagewidget.dart';
import 'package:shared_preferences/shared_preferences.dart';
// ignore: camel_case_types
class Log_in_page extends StatelessWidget {
  static var name = TextEditingController();
  static var pass = TextEditingController();

  const Log_in_page({super.key});
  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    main()async{
      SharedPreferences pre = await SharedPreferences.getInstance();
      pre.setString('username',name.text.toString());
      pre.setBool('IsLogedIn', true);
      String uname = name.text.toString();
      if (formkey.currentState!.validate()) {
        // ignore: use_build_context_synchronously
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>Controler(uname),
            ));
      }
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/5421740_2840523.jpg',
                      width: 100,
                      height: 150,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                         Text(
                            'Maintenance',
                            style: TextStyle(fontSize: 30),
                          ),
                          Text('Box',
                              style: TextStyle(
                                  color: Colors.deepOrange, fontSize: 35)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Log in',
                  style: TextStyle(fontSize: 40),
                ),
                const SizedBox(
                  height: 10,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Discipline is the best tool',
                      textStyle: const TextStyle(fontSize: 20, color: Colors.teal),
                    ),
                    TypewriterAnimatedText('design first then code',
                        textStyle: const TextStyle(fontSize: 20, color: Colors.teal)),
                    TypewriterAnimatedText(
                        'Do not test bugs out, design them out',
                        textStyle: const TextStyle(fontSize: 20, color: Colors.teal)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfield1(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfield2(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 180.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Forget(),));
                    },
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(
                          decoration: TextDecoration.underline, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 120,
                ),
                InkWell(
                  onTap: () {
                    main();
                  },
                  splashColor: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(12)),
                    width: 280,
                    height: 50,
                    child: const Center(
                        child: Text(
                      'Log In',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 25, color: Colors.deepOrange),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
