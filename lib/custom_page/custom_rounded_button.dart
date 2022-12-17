import 'package:flutter/material.dart';
import 'package:responsive_ui/custom_page/custom_color.dart';


class CustomRoundedButton extends StatelessWidget {
  final String title;
  final void Function ()? onPressed;
  
  
  const CustomRoundedButton({
    super.key,
         this.onPressed,
    required this.title,
    });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: CustomColor.primaryColor,
      borderRadius: BorderRadius.all(Radius.circular(8)),
      elevation: 5,
      child: InkWell(
        onTap: onPressed,
        splashColor: Colors.red.withOpacity(0.5),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          // ignore: prefer_const_constructors
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}