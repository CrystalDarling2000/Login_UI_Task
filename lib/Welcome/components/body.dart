import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_ui/SignUp/signup_screen.dart';
import 'package:login_ui/Welcome/components/background.dart';
import 'package:login_ui/Welcome/components/rounded_button.dart';
import 'package:login_ui/constraints.dart';
import 'package:login_ui/screens/login_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //This size provides the total height and width of the screen
    return Background(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Welcome to Edu',style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: size.height * 0.05,),
        SvgPicture.asset('assets/images/icons/chat.svg',height: size.height * 0.45,),
        SizedBox(height: size.height * 0.05,),
        RoundedButton(text: "LOGIN",press: (){
          Navigator.push(context, MaterialPageRoute(builder: (ctx){
            return LoginScreen();
          }));
        },),
        RoundedButton(text: "SIGN UP",color: KPrimaryLightColor,textColor:Colors.black ,press: (){
          Navigator.push(context, MaterialPageRoute(builder:(context){return SignUpScreen();}));
        },)
    ]),);
  }
}