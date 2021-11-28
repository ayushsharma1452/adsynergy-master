import 'package:ad_synergy/pages/home_Screen.dart';
import 'package:ad_synergy/pages/signUp/signUp_Congrats1.dart';
import 'package:ad_synergy/pages/signUp/singUp_congrats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ad_synergy/pages/logIn/log_In.dart';

class SignUpContScreen extends StatefulWidget
{
  _SignUpScreenState createState() => new _SignUpScreenState();

}

class _SignUpScreenState extends State<SignUpContScreen> with TickerProviderStateMixin {

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
                                      'Sign Up',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 55,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Roboto'
                                      ),
                                    ),
                                    SizedBox(
                                        height: 35
                                    ),
                                    buildFirstName(),
                                    SizedBox(
                                        height: 14
                                    ),
                                    buildLastName(),
                                    SizedBox(
                                        height: 14
                                    ),
                                    SizedBox(
                                        height: 10
                                    ),
                                    buildWebsite(),
                                    SizedBox(
                                        height: 14
                                    ),
                                    buildRadio(),
                                    SizedBox(
                                        height: 44
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

  Widget buildFirstName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'First Name',
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
                hintText:'Enter your First Name',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildLastName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Last Name',
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
                hintText:'Enter Your Last Name',
                hintStyle: TextStyle(
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
          'Website',
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
                hintText:'Enter Your Website Name',
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
            new MaterialPageRoute(builder: (_) => new SignUpCongrats1Screen())),
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

/*
 Widget buildRadio() {
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: new Text('Kids Quiz App'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: new Container(
          padding: EdgeInsets.all(8.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                'Select correct answers from below:',
                style: new TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              new Padding(
                padding: new EdgeInsets.all(8.0),
              ),
              new Divider(height: 5.0, color: Colors.black),
              new Padding(
                padding: new EdgeInsets.all(8.0),
              ),
              new Text(
                'Lion is :',
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: _radioValue1,
                    onChanged: _handleRadioValueChange1,
                  ),
                  new Text(
                    'Carnivore',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: _radioValue1,
                    onChanged: _handleRadioValueChange1,
                  ),
                  new Text(
                    'Herbivore',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: _radioValue1,
                    onChanged: _handleRadioValueChange1,
                  ),
                  new Text(
                    'Omnivore',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
*/

Widget buildRadio()
{
  return Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    Text(
    'You are:-',
    style:TextStyle(
      color: Colors.white,
      fontSize: 18,

      fontWeight: FontWeight.bold,
    ),
  ),
  SizedBox(
  height: 10
  ),
      Row(
        children: <Widget>[
          Radio
            (
              value: "Advertiser",
              groupValue: groupValue,
              onChanged: (value){
                setState(() {
                  this.groupValue=value;
                });
              }
          ),
          Text(
            "Advertiser",
            style:TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        SizedBox(width: 30,),
          Radio
            (
              value: "Publisher",
              groupValue: groupValue,
              onChanged: (value){
                setState(() {
                  this.groupValue=value;
                });
              }
          ),
          Text(
            "Publisher",
            style:TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          )

        ],
      ),
  ],

  );

}

}