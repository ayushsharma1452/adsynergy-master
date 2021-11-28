import 'package:ad_synergy/utils/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//enum role { advOnly, pubOnly, mainlyAdv, mainlyPub }
class Products extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Products> {
  bool isDisplayContainer = false;
  //role _role = role.advOnly;
  String _role = "Advertiser Only";

  int _radioValue = 0;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.publication),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text("Products: ", style: TextStyle(fontSize: 20)),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isDisplayContainer = !isDisplayContainer;
                            });
                          },
                          child: Text(isDisplayContainer ? "-" : '+',
                              style: TextStyle(
                                fontSize: 28,
                              )),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            primary: Theme.of(context).accentColor,
                          ),
                        ),
                        Text(
                          " No products.",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                isDisplayContainer
                    ? Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  //height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffc8e6c9),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 6, 0, 0),
                          child: Row(
                            children: [
                              Text(
                                "Name:",
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                        ),
                        Card(
                          elevation: 3.0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                            child: TextField(
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10.0),
                                border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.circular(5.0),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                  borderRadius:
                                  BorderRadius.circular(5.0),
                                ),
                              ),
                              maxLines: 1,
                              //controller: _usernameControl,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              Text(
                                "Description:",
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                        ),
                        Card(
                          elevation: 3.0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                            child: TextField(
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10.0),
                                border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.circular(5.0),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                  borderRadius:
                                  BorderRadius.circular(5.0),
                                ),
                              ),
                              maxLines: 5,
                              //controller: _emailControl,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              Text(
                                "Website:",
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                        ),
                        Card(
                          elevation: 3.0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                            child: TextField(
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10.0),
                                border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.circular(5.0),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                  borderRadius:
                                  BorderRadius.circular(5.0),
                                ),
                              ),
                              maxLines: 1,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              Text(
                                "Share:",
                                style: TextStyle(fontSize: 18),
                              ),
                              Radio(
                                value: 0,
                                groupValue: _radioValue,
                                onChanged: _handleRadioValueChange,
                              ),
                              Text(
                                'Private',
                                style: new TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Radio(
                                value: 1,
                                groupValue: _radioValue,
                                onChanged: _handleRadioValueChange,
                              ),
                              Text(
                                'Public',
                                style: new TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  child: RaisedButton(
                                    child: Text(
                                      "Add Product/Brand",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    onPressed: () {},
                                    color: Theme.of(context).accentColor,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  child: RaisedButton(
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isDisplayContainer = false;
                                      });
                                    },
                                    color: Theme.of(context).accentColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                    : Container(),
//                Padding(
//                  padding:
//                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                  child: FlatButton(
//                      padding: EdgeInsets.all(20),
//                      shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.circular(15)),
//                      color: Color(0xffc8e6c9),
//                      onPressed: () {
//                        openPopup(context);
//                      },
//                      child: Row(
//                        children: [
//                          Expanded(
//                              child: Text(
//                            "Feedback",
//                            style: Theme.of(context).textTheme.bodyText1,
//                          )),
//                        ],
//                      )),
//                ),
              ],
            ),
          )),
    );
  }
}
