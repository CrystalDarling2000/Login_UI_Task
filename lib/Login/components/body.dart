import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_ui/Login/components/alreadyHaveanAccount.dart';
import 'package:login_ui/Login/components/background.dart';
import 'package:login_ui/Login/components/rounded_inputfield.dart';
import 'package:login_ui/Login/components/rounded_passwordfield.dart';
import 'package:login_ui/Login/components/textfield_container.dart';
import 'package:login_ui/SignUp/signup_screen.dart';
import 'package:login_ui/Welcome/components/rounded_button.dart';
import 'package:login_ui/constraints.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(height: size.height * 0.03,),
      SvgPicture.asset('assets/images/icons/login.svg',height: size.height * 0.3,
      ),
      SizedBox(height: size.height * 0.03,),
      RoundedInputField(
        hintText: "Your Email",
        onChanged: ((value) {}),
        ),
        RoundedPasswordField(onChanged: (value){},),
        RoundedButton(text: "LOGIN", press: (){}),
        SizedBox(height: size.height * 0.03,),
        AlreadyHaveanAccountCheck(press: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){return const SignUpScreen();}));
        },)
    ],),);
  }
}
