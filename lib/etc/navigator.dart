import 'package:flutter/material.dart';

class MyNavigator {


  static void goToLogin(BuildContext context) {
    Navigator.pushNamed(context, "/login");
  }

  static void goToOnboard(BuildContext context) {
    Navigator.pushNamed(context, "/onBoard");
  }
  static void goToSignUp(BuildContext context) {
    Navigator.pushNamed(context, "/signUp");
  }
}