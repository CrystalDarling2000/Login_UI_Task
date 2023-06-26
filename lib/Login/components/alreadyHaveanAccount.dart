import 'package:flutter/material.dart';
import 'package:login_ui/constraints.dart';
class AlreadyHaveanAccountCheck extends StatelessWidget {
  final bool login;
  final void Function() press;
  const AlreadyHaveanAccountCheck({
    this.login = true,
     required this.press,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text(login ? "Don't have an Account?" : "Already have an account?",style: TextStyle(color: kPrimaryColor),
      ),
      GestureDetector(
        onTap: press,
        child: Text(login ? "Sign Up" : "Sign In",
        style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold),))
    ],);
  }
}