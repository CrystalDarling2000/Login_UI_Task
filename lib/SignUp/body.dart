import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_ui/Login/components/alreadyHaveanAccount.dart';
import 'package:login_ui/Login/components/rounded_inputfield.dart';
import 'package:login_ui/SignUp/background.dart';
import 'package:login_ui/SignUp/or_divider.dart';
import 'package:login_ui/Welcome/components/rounded_button.dart';
import 'package:login_ui/constraints.dart';
import 'package:login_ui/screens/login_screen.dart';

class Body extends StatelessWidget{
 
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
   return Background(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("SIGN UP",style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(height: size.height * 0.03,),
      SvgPicture.asset('assets/images/icons/signup.svg',height: size.height * 0.35,),
      RoundedInputField(hintText: "Your Email", onChanged: (value){}),
      RoundedInputField(hintText: "Your Password",onChanged: (value){}),
      RoundedButton(text: "SIGN UP", press: (){}),
       SizedBox(height: size.height * 0.03,),
      AlreadyHaveanAccountCheck(
        login: false,
        press: (){
          Navigator.push(context, MaterialPageRoute(builder:(context){return LoginScreen();}));
        },
      ),
      OrDivider(),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        SocialIcon(iconSrc: 'assets/images/icons/facebook.svg',press: (){},),
        SocialIcon(iconSrc: 'assets/images/icons/google-plus.svg',press: (){},),
        SocialIcon(iconSrc: 'assets/images/icons/twitter.svg',press: (){},),

      ],)
    ],
   ),);
  }
}

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final void Function() press;
  const SocialIcon({
    super.key,
    required this.iconSrc,
    required this.press
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
      decoration: BoxDecoration(border: Border.all(width: 2,color:KPrimaryLightColor),
      shape: BoxShape.circle
      ),
      child: SvgPicture.asset(iconSrc,height: 20,width: 20,),
      ),
    );
  }
}