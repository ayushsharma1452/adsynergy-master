

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForgetPassword extends StatefulWidget
{
  _ForgetPasswordScreenState createState() => new _ForgetPasswordScreenState();



}

class _ForgetPasswordScreenState extends State<ForgetPassword> with TickerProviderStateMixin {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>
          (
            value: SystemUiOverlayStyle.light,
            child: GestureDetector(
                child: Stack(
                    children: <Widget>[
                      Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0x6681d82e),
                                    Color(0x9981d82e),
                                    Color(0xcc81d82e),
                                    Color(0xff81d82e),
                                  ]
                              )
                          )
                      )
                    ]
                )
            )
        )
    );
  }






}