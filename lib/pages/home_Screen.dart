

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget
{
  _HomeScreenState createState() => new _HomeScreenState();



}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {



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
                                    Color(0x665ac18e),
                                    Color(0x995ac18e),
                                    Color(0xcc5ac18e),
                                    Color(0xff5ac18e),
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