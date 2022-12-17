import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_ui/custom_page/custom_color.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
     final _height = MediaQuery.of(context).size.height;
     final _weight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: CustomColor.primaryColor,
        height: _height,
        width: _weight,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.only(top: 40, bottom: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text('Welcome to App Name',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                    ),
                  ),
                
                  Container(
                    margin: EdgeInsets.only(top:8, bottom: 20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text('Discover Amazing Thing Near Around You.',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}