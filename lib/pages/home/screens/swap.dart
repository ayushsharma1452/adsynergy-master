import 'package:ad_synergy/utils/const.dart';
import 'package:flutter/material.dart';

class SwapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                      Text("Find Swap Partner: ",
                          style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(20),
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
                              hintText:
                                  'Domain name (link), please leave the http://www. out.',
                              contentPadding: EdgeInsets.all(10.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            maxLines: 1,
                            //controller: _usernameControl,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 50,
                                child: RaisedButton(
                                  child: Text(
                                    "Swap Search",
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 10),
                    child: Text(
                      'Swaf Offers ',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 10),
                    child: Text(
                      'Offered',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 10),
                    child: Text(
                      'No Swaps on offere',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 10),
                    child: Text(
                      'Accepted',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 10),
                    child: Text(
                      'No Swaps Accepted',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 10),
                    child: Text(
                      'Declined',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
//              Padding(
//                padding:
//                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                child: FlatButton(
//                    padding: EdgeInsets.all(20),
//                    shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.circular(15)),
//                    color: Color(0xffc8e6c9),
//                    onPressed: () {
//                      openPopup(context);
//                    },
//                    child: Row(
//                      children: [
//                        Expanded(
//                            child: Text(
//                          "Feedback",
//                          style: Theme.of(context).textTheme.bodyText1,
//                        )),
//                      ],
//                    )),
//              ),
            ],
          ),
        ));
  }
}
