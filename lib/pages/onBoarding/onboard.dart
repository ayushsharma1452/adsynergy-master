//import 'package:flutter/material.dart';
//// import 'dart:async';
//
///*
//
//class HorizontalSwipeScreen extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//        title: 'Flutter Tutorials',
//        home: MainScreen()
//    );
//  }
//}
//
///// This is the stateless widget that the main application instantiates.
//class MainScreen extends StatelessWidget {
//  final controller = PageController(initialPage: 0);
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Flutter Horizontal Swipe Example'),
//      ),
//      body: Center(
//          child: PageView(controller: controller,
//            children: <Widget>[
//              Container(
//                alignment: Alignment.topRight,
//                child: Column(
//                  mainAxisSize: MainAxisSize.min,
//                  children: [
//                    TextButton(
//                      child: Text(
//                        "Skip"
//                      ),
//                    style: TextButton.styleFrom
//                      (
//                      textStyle: TextStyle(
//                        fontSize: 18,
//                        fontWeight: FontWeight.bold,
//                      ),
//                      primary: Colors.teal
//                      ),
//                      onPressed: () {
//                        print("Pressed");
//                      },
//
//                    ),
//                  ],
//                ),
//              ),
//              Container(
//                alignment: Alignment.topRight,
//                child: Column(
//                  mainAxisSize: MainAxisSize.min,
//                  children: [
//                    TextButton(
//                      child: Text(
//                          "Skip"
//                      ),
//                      style: TextButton.styleFrom
//                        (
//                          textStyle: TextStyle(
//                            fontSize: 18,
//                            fontWeight: FontWeight.bold,
//                          ),
//                          primary: Colors.teal
//                      ),
//                      onPressed: () {
//                        print("Pressed");
//                      },
//
//                    ),
//                  ],
//                ),
//              ),
//              Container(
//                color: Colors.red,
//              ),
//            ],)
//      ),
//    );
//  }
//}
//
//
//*/
//
//
//class OnBoardingScreen extends StatefulWidget {
//  @override
//  _OnBoardingScreenState createState() => _OnBoardingScreenState();
//}
///// This is the stateless widget that the main application instantiates.
//class _OnBoardingScreenState extends State<OnBoardingScreen> {
//
//
//  @override
//  Widget build(BuildContext context)
//  {
//    return Scaffold(
//
//      body: Container(
//
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//         child: Column(
//         children: <Widget>[
//          Column(
//            children: <Widget>[
//              Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//                children: <Widget>[
//                  Container(
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               image: DecorationImage(image: AssetImage('assets/images/image1.jpg'),
//               fit: BoxFit.cover,
//               ),
//             ),
//                  ),
//                ],
//              ),
//            ],
//          ),
//          Column(
//            crossAxisAlignment: CrossAxisAlignment.stretch,
////            mainAxisAlignment: MainAxisAlignment.center,
////            crossAxisAlignment: CrossAxisAlignment.center,
//            children: <Widget>[
//              FlatButton(
//                  onPressed: (){print("Getting started button clicked");},
//                  child: Text(
//                    'Getting Started',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18,
//                   ),
//                  ),
//                textColor: Colors.white,
//
//                shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(5),
//                ),
//                color: Colors.greenAccent,
//              )
//            ],
//          ),
//        ],
//      ),
//    ),
//          ),
//    );
//  }
//}
//
//




import 'dart:async';

import 'package:ad_synergy/pages/home/home_page.dart';
import 'package:ad_synergy/pages/logIn/log_In.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ad_synergy/pages/onBoarding/slides_item.dart';
import 'package:ad_synergy/pages/onBoarding/slides.dart';
import 'package:ad_synergy/pages/onBoarding/slides_dot.dart';


class OnBoardScreen extends StatefulWidget {
  @override
  _OnBoardScreenState createState() => _OnBoardScreenState ();
}

class _OnBoardScreenState  extends State<OnBoardScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(

      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      itemCount: slideList.length,
                      itemBuilder: (ctx, i) => SlideItem(i),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 15/*35*/),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for(int i = 0; i<slideList.length; i++)
                                if( i == _currentPage )
                                  SlideDots(true)
                                else
                                  SlideDots(false)
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'Getting Started',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(15),
                    //color: Theme.of(context).primaryColor,
                    color:Color(0xff5ac18e),
                    textColor: Colors.white,
                    onPressed: () => Navigator.of(context).push(
//                        new MaterialPageRoute(builder: (_) => new LoginScreen())),
                          new MaterialPageRoute(builder: (_) => new HomePage())),
                  ),

                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}