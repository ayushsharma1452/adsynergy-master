import 'dart:async';

import 'package:ad_synergy/pages/home_Screen.dart';
import 'package:ad_synergy/pages/onBoarding/onboard.dart';
import 'package:flutter/material.dart';
import 'package:ad_synergy/etc/navigator.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:after_layout/after_layout.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     Timer(Duration(seconds: 5), () => MyNavigator.goToOnboard(context));
    /* Timer(Duration(seconds: 5), () => print("Hello"));*/
  }


/*

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);
    if (_seen) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new HomeScreen()));
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new OnBoardScreen()));
    }
  }

*/



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Color(0xff74f997)),
          ),
          Column(
              mainAxisAlignment:MainAxisAlignment.start,
              children:<Widget>
              [
                Expanded(
                    flex:2,
                    child:Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 65.0,
                                /*child: new Image.asset('assets/images/logo.png'),*/
                                child: new Image.asset('assets/images/logo.png'),
                              ),
                              Padding(padding: EdgeInsets.only(top:10.0, bottom: 5.0, left: 10.0, right: 10.0),
                              ),
                              Text("AdSynergy", style:TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  fontSize: 34.0),
                              )

                            ]
                        )
                    )
                ),
                Expanded(
                    flex:1,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircularProgressIndicator(),
                        Padding(
                          padding: EdgeInsets.only(top:40.0),
                        ),
                        Text("#RebuildLocal", style: TextStyle(
                          color: Colors.white,
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ComicNeue',
                        ),
                        )
                      ],
                    )
                )
              ]
          )
        ],
      ),


    );
  }



}


