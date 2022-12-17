
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_ui/custom_page/custom_color.dart';

class CustomOutlineButton extends StatelessWidget {
  final String tittle;
  final void Function ()? onPressed;
  const CustomOutlineButton({
    super.key,
    required this.tittle,
    this.onPressed,
    });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 40),
          decoration: BoxDecoration(
            border: Border.all(
              color: CustomColor.primaryColor,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text('Sign Up',
          style: TextStyle(
            fontSize: 16,
            color: CustomColor.primaryColor,
            fontWeight: FontWeight.w500,
          ),
          ),
        ),
      ),
    );
  }
}