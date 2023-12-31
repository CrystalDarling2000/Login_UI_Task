import 'package:flutter/material.dart';
import 'package:login_ui/constraints.dart';
class RoundedButton extends StatelessWidget {
  final String text;
  final void Function() press;
  final Color color,textColor;
  const RoundedButton({
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    super.key,
  });

 

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          // style: ButtonStyle(
            
          //   foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),),
          
          style: TextButton.styleFrom(
              backgroundColor: color,
        ),
          onPressed: press, child: Text(text,style: TextStyle(color:textColor),)),
      ),
    );
  }
}
