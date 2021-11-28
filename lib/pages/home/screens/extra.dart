import 'package:flutter/material.dart';

class ExtraPage extends StatefulWidget {
  const ExtraPage({Key key}) : super(key: key);

  @override
  _ExtraPageState createState() => _ExtraPageState();
}

class _ExtraPageState extends State<ExtraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Extra Page'),
          ),
          body: 
          Container(
            
            child: Text('Extra page'),)
        ),
      ),
    );
  }
}
