


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Color colors;
  final void Function()? onPressed;
  const CustomIconButton({
    super.key,
    required this.colors,
    required this.icon,
    this.onPressed,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Material(
         color: colors,
              borderRadius: BorderRadius.circular(8),

        child: InkWell(
          onTap: onPressed,
           borderRadius: BorderRadius.circular(8),

          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),

            ),
            child: Icon(icon,
            size: 25,
            color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}