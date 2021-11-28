import 'package:ad_synergy/pages/home_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ad_synergy/pages/logIn/log_In.dart';

class SignUpCongratsScreen extends StatefulWidget
{
  _SignUpCongratsScreenState createState() => new _SignUpCongratsScreenState();

}

class _SignUpCongratsScreenState extends State<SignUpCongratsScreen> with TickerProviderStateMixin {

  String groupValue;

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
                            Color(0x6674f997),
                            Color(0x9974f997),
                            Color(0xcc74f997),
                            Color(0xff74f997),
                          ]
                      )
                  ),

                  child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 90,
                        // vertical:50,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Congratulations',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Comic Neule'
                            ),
                          ),
                          SizedBox(
                              height: 14
                          ),
                          buildImage(),
                          SizedBox(
                              height: 14
                          ),
                          buildLoginInButton(),
                        ],
                      )
                  )


              )
            ],
          ),
        ),
      ),

    );
  }
/*
  Widget buildImage() {
    return Scaffold(
      body: Stack(fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Color(0xff74f997)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>
            [
              Expanded(
                  flex: 3,
                  child: Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                          // Image(image: ),
                           Image.asset('assets/images/success.png'),

                          ]
                      )
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
  */



Widget buildImage()
{
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset('assets/images/success3.png'),
    ],
  );
}


  Widget buildLoginInButton()
  {
    return Container(
      padding:EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,

      child: new RaisedButton(
        elevation: 5,
        // onPressed: () => print('Login Pressed'),
        onPressed: () => Navigator.of(context).push(
            new MaterialPageRoute(builder: (_) => new LoginScreen())),
        /*onPressed: () => MyNavigator.goToSignUp(context),*/


//          child: new CardView(260.0 + animation2.value * 80),

//        onPressed: () {
//          Navigator.push(
//            context,
//            MaterialPageRoute(builder: (context) => SignUpScreen()
//            ),
//          );
//
//        },

        padding: EdgeInsets.all(15),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),

        ),
        color: Colors.white,
        //  child:

        child: Text(
          'LogIn',
          style: TextStyle(
              color: Color(0xff5ac18e),
              fontSize: 18.0,
              fontWeight: FontWeight.bold
          ),
        ),
      ),


    );
  }


}
