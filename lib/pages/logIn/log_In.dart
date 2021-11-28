import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ad_synergy/pages/signUp/SignUp.dart';
import 'package:ad_synergy/pages/home_Screen.dart';
import 'package:ad_synergy/pages/forget_Pass.dart';

class LoginScreen extends StatefulWidget
{
_LoginScreenState createState() => new _LoginScreenState();
}



class _LoginScreenState extends State<LoginScreen> with TickerProviderStateMixin {


//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    Timer(Duration(seconds: 5), () => MyNavigator.goToLogin(context));
//    /* Timer(Duration(seconds: 5), () => print("Hello"));*/
//  }

  bool isRememberMe = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  String _email;
  String _password;

//  void _submitCommand() {
//    final form = formKey.currentState;
//
//    if (form.validate()) {
//      form.save();
//
//
//      // Email & password matched our validation rules
//      // and are saved to _email and _password fields.
//      _loginCommand();
//    }
//  }
//
//  void _loginCommand() {
//    // This is just a demo, so no actual login here.
//    final snackbar = SnackBar(
//      content: Text('Email: $_email, password: $_password'),
//    );
//
//    scaffoldKey.currentState.showSnackBar(snackbar);
//  }

  void validateAndSave() {
    final FormState form = formKey.currentState;
    if (form.validate()) {
      print('Form is valid');
    } else {
      print('Form is invalid');
    }
  }

//
//  String validateEmail(String value)
//  {
//    Pattern pattern =
//        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
//        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
//        r"{0,253}[a-zA-Z0-9])?)*$";
//    RegExp regex = new RegExp(pattern);
//    if (!regex.hasMatch(value) || value == null)
//      return 'Enter a valid email address';
//    else
//      return null;
//  }
//


  /*
   *  editing area to build the textbox and buttons
   */


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
          height: 60,
          child: TextFormField(

//            validator: (value) {
//              if (value.isEmpty) {
//                return 'Please enter some text';
//              }
//              return null;
//            },


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
            // decoration: InputDecoration(labelText: 'Email'),


//            validator: (val) => !EmailValidator.validate(val, true)
//                ? 'Not a valid email.'
//                : null,
            validator: (value) =>
            value.isEmpty ? 'Email cannot be blank' : null,
           // onSaved: (val) => _email = val,

        // validator: validateEmail,
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
          height: 60,
          child: TextFormField(

            obscureText: true,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xff74f997),
                ),
                hintText:'Password',
                hintStyle: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.black38
                )
            ),
//            validator: (val) =>
//            val.length < 6 ? 'Password too short..' : null,
//            onSaved: (val) => _password = val,
            validator: (value) =>
            value.isEmpty ? 'Password cannot be blank' : null,
            // onSaved: (value) => _password = value,

          ),
        )
      ],
    );
  }

  Widget buildForgotPasswordButton()
  {
    return Container(
      alignment: Alignment.centerRight,
//      child: FlatButton(onPressed: () => print("Forgot passwod clicked"),
      child: FlatButton(

          onPressed: () => Navigator.of(context).push(
              new MaterialPageRoute(builder: (_) => new ForgetPassword())),

          padding: EdgeInsets.only(right:0),
          child: Text(
            'Forgot Password ?',
            style:TextStyle(
                fontFamily: 'Roboto',
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          )),
    );
  }

  /*   Remember me checkbox  */
  Widget buildRemember()
  {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(data: ThemeData(
              unselectedWidgetColor: Colors.white
          ),
              child: Checkbox(
                value: isRememberMe,
                checkColor: Colors.green,
                activeColor: Colors.white,
                onChanged: (value){
                  setState((){
                    isRememberMe = value;
                  });
                },
              ),
          ),
          Text(
            'Remember me',
            style: TextStyle(
              color:Colors.white,
              fontWeight: FontWeight.bold,

            )
          ),
        ],
      ),
    );
  }

Widget buildLoginButton()
{
  return Container(
    padding:EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,

    child: new RaisedButton(
      elevation: 5,
     // onPressed: () => print('Login Pressed'),

//      onPressed: () => Navigator.of(context).push(
//          new MaterialPageRoute(builder: (_) => new HomeScreen())),

     // onPressed: _submitCommand,
      onPressed: validateAndSave,

      /*onPressed: () => MyNavigator.goToSignUp(context),*/


//          child: new CardView(260.0 + animation2.value * 80),

//        onPressed: () {
//         Navigator.push(
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



Widget buildSignUpButton()
{
  return GestureDetector(
    /*onTap: () => print("Sign Up Pressed"),*/
      onTap: () => Navigator.of(context).push(
          new MaterialPageRoute(builder: (_) => new SignUpScreen())),
    child: RichText(

      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500
            )
          ),

          TextSpan(

        text: 'Sign Up',
        style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
        )
        )
        ]
      ),
    )
  );
}
/*
  *  End of the editing area ==========================================
  */





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
                          /*

                        Color(0xff81d82e),
                        Color(0xffcdfbdd),
                        Color(0xff74f997),
                        Color(0xff70f092),
                        Color(0xff5ac18e),

                        */
                        ]
                    )
                ),

                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 55,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto'
                          ),
                        ),
                        SizedBox(
                            height: 80
                        ),
                        buildEmail(),
                        SizedBox(
                            height: 20
                        ),
                        buildPassword(),
                        buildForgotPasswordButton(),
                        buildRemember(),
                        buildLoginButton(),
                        buildSignUpButton(),
                      ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}



//class MyNavigator {
//  static void goToSignUp(BuildContext context) {
//    Navigator.pushNamed(context, "/signUp");
//  }


/*

onTap: () => Navigator.of(context).push(
           new MaterialPageRoute(builder: (_) => new SignUpScreen())),



* */


/*


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
          height: 60,
          child: TextFormField(

//            validator: (value) {
//              if (value.isEmpty) {
//                return 'Please enter some text';
//              }
//              return null;
//            },
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
          height: 60,
          child: TextField(

            obscureText: true,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
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

  Widget buildForgotPasswordButton()
  {
    return Container(
      alignment: Alignment.centerRight,
//      child: FlatButton(onPressed: () => print("Forgot passwod clicked"),
      child: FlatButton(

          onPressed: () => Navigator.of(context).push(
              new MaterialPageRoute(builder: (_) => new ForgetPassword())),

          padding: EdgeInsets.only(right:0),
          child: Text(
            'Forgot Password ?',
            style:TextStyle(
                fontFamily: 'Roboto',
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          )),
    );
  }

  /*   Remember me checkbox  */
  Widget buildRemember()
  {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(data: ThemeData(
              unselectedWidgetColor: Colors.white
          ),
              child: Checkbox(
                value: isRememberMe,
                checkColor: Colors.green,
                activeColor: Colors.white,
                onChanged: (value){
                  setState((){
                    isRememberMe = value;
                  });
                },
              ),
          ),
          Text(
            'Remember me',
            style: TextStyle(
              color:Colors.white,
              fontWeight: FontWeight.bold,

            )
          ),
        ],
      ),
    );
  }

Widget buildLoginButton()
{
  return Container(
    padding:EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,

    child: new RaisedButton(
      elevation: 5,
     // onPressed: () => print('Login Pressed'),
      onPressed: () => Navigator.of(context).push(
          new MaterialPageRoute(builder: (_) => new HomeScreen())),
      /*onPressed: () => MyNavigator.goToSignUp(context),*/


//          child: new CardView(260.0 + animation2.value * 80),

//        onPressed: () {
//         Navigator.push(
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



Widget buildSignUpButton()
{
  return GestureDetector(
    /*onTap: () => print("Sign Up Pressed"),*/
      onTap: () => Navigator.of(context).push(
          new MaterialPageRoute(builder: (_) => new SignUpScreen())),
    child: RichText(

      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500
            )
          ),

          TextSpan(

        text: 'Sign Up',
        style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
        )
        )
        ]
      ),
    )
  );
}
/*
  *  End of the editing area ==========================================
  */





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
                          /*

                        Color(0xff81d82e),
                        Color(0xffcdfbdd),
                        Color(0xff74f997),
                        Color(0xff70f092),
                        Color(0xff5ac18e),

                        */
                        ]
                    )
                ),

                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 55,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto'
                          ),
                        ),
                        SizedBox(
                            height: 80
                        ),
                        buildEmail(),
                        SizedBox(
                            height: 20
                        ),
                        buildPassword(),
                        buildForgotPasswordButton(),
                        buildRemember(),
                        buildLoginButton(),
                        buildSignUpButton(),
                      ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }



*/

