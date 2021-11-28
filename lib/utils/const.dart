import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Constants {
  static String appName = "Adsnegry";
  static String publication = "Publication";
  static String placement = "Placement";
  static String adset = "Ad Sets";

  static String stats = "Statistics";

  
}

class SalesData {
  SalesData(this.x, this.y);
  final String x;
  final double y;
}

void openPopup(context) {
  Alert(
      context: context,
      title: "FEEDBACK",
      content: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.feedback),
              labelText: 'Your feedback',
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              labelText: 'Email for respones',
            ),
          ),
        ],
      ),
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            "Send",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        )
      ]).show();
}

class AssessmentRecord{
  String assessmentTitle;
  List<String> names;
  List<int> marks;
}

class Assessment{
  final String name;
  final int marks;
  Assessment(this.name, this.marks);
}