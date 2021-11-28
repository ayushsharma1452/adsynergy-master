

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ad_synergy/pages/log_In.dart';

class SignUpScreen extends StatefulWidget
{
  _SignUpScreenState createState() => new _SignUpScreenState();



}

class _SignUpScreenState extends State<SignUpScreen> with TickerProviderStateMixin {



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
                //vertical: 120,
                vertical:50,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text(
                'Sign Up',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'
                  ),
                 ),
                  SizedBox(
                      height: 15
                  ),
                  buildName(),
                  SizedBox(
                      height: 14
                  ),
                  buildEmail(),
                  SizedBox(
                      height: 14
                  ),
                  buildPassword(),
                  SizedBox(
                      height: 14
                  ),
                  buildConfirmPassword(),
                  SizedBox(
                      height: 14
                  ),
                  buildWebsite(),
                  SizedBox(
                      height: 14
                  ),
                  buildSignUpButton(),
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

  Widget buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Name',
          style:TextStyle(
            color: Colors.white,
            fontSize: 18,

            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
            height: 10
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 50,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.person,
                  color: Color(0xff74f997),
                ),
                hintText:'First and Last Name',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style:TextStyle(
            color: Colors.white,
            fontSize: 18,

            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
            height: 10
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 50,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xff74f997),
                ),
                hintText:'E-mail',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style:TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
            height: 10
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 50,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.vpn_key,
                  color: Color(0xff74f997),
                ),
                hintText:'Password',
                hintStyle: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildConfirmPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Confirm Password',
          style:TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
            height: 10
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 50,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.vpn_key,
                  color: Color(0xff74f997),
                ),
                hintText:'Re-Type Password',
                hintStyle: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildWebsite() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Your website',
          style:TextStyle(
            color: Colors.white,
            fontSize: 18,

            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
            height: 10
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 50,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.person,
                  color: Color(0xff74f997),
                ),
                hintText:'Your Website Name',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildSignUpButton()
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
          'SignUp',
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