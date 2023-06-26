import 'package:flutter/material.dart';
import 'package:login_ui/Login/components/textfield_container.dart';
import 'package:login_ui/constraints.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    super.key,
    required this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(child: TextField(
      obscureText: true,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: "Your Password",
        icon: Icon(
        Icons.lock,
      color:kPrimaryColor),
      suffixIcon: Icon(Icons.visibility,color: kPrimaryColor,
      ),
      border: InputBorder.none
      ),
    ));
  }
}