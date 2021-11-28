import 'package:ad_synergy/utils/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Placement extends StatefulWidget {
  @override
  _PlacementState createState() => _PlacementState();
}

class _PlacementState extends State<Placement> {
  bool isDisplayContainer = false;
  String _dropDownAdSlot;
  String _dropDownAd;
  String _dropDownAdSet;

  DateTime endDate = DateTime.now();
  DateTime startDate = DateTime.now();

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
        title: Text(Constants.placement),
      ),
      body: 
      
      Container(
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
                        Text("Placement All: ", style: TextStyle(fontSize: 20)),
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
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("All"),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            primary: Theme.of(context).accentColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Default Placements ?',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'No Placements',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Internal Placements ',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'No Placements',
                      ),
                    ),
                  ],
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
                                      "Placement Name:",
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
                                      "Placement Notes:",
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
                                      "Ad Slot:",
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: DropdownButton(
                                      hint: _dropDownAdSlot == null
                                          ? Text(
                                              'Select value',
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            )
                                          : Text(
                                              _dropDownAdSlot,
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ),
                                      isExpanded: true,
                                      iconSize: 30.0,
                                      style: TextStyle(color: Colors.blue),
                                      items: ['No record Found'].map(
                                        (val) {
                                          return DropdownMenuItem<String>(
                                            value: val,
                                            child: Text(val),
                                          );
                                        },
                                      ).toList(),
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _dropDownAdSlot = val;
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      "Ad:",
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: DropdownButton(
                                      hint: _dropDownAd == null
                                          ? Text(
                                              'Select value',
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            )
                                          : Text(
                                              _dropDownAd,
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ),
                                      isExpanded: true,
                                      iconSize: 30.0,
                                      style: TextStyle(color: Colors.blue),
                                      items: ['No record found'].map(
                                        (val) {
                                          return DropdownMenuItem<String>(
                                            value: val,
                                            child: Text(val),
                                          );
                                        },
                                      ).toList(),
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _dropDownAd = val;
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      "Ad Set:",
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: DropdownButton(
                                      hint: _dropDownAdSet == null
                                          ? Text(
                                              'Select value',
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            )
                                          : Text(
                                              _dropDownAdSet,
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ),
                                      isExpanded: true,
                                      iconSize: 30.0,
                                      style: TextStyle(color: Colors.blue),
                                      items: ['No record found'].map(
                                        (val) {
                                          return DropdownMenuItem<String>(
                                            value: val,
                                            child: Text(val),
                                          );
                                        },
                                      ).toList(),
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _dropDownAdSet = val;
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      "Start Date:",
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(6, 0, 6, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5.0),
                                      ),
                                    ),
                                    height: 50,
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: Text(
                                            "${startDate.day}/${startDate.month}/${startDate.year}",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () => _selectStartDate(context),
                              ),
                              SizedBox(height: 10.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      "End Date:",
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(6, 0, 6, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5.0),
                                      ),
                                    ),
                                    height: 50,
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: Text(
                                            "${endDate.day}/${endDate.month}/${endDate.year}",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () => _selectEndDate(context),
                              ),
                              SizedBox(height: 10.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      "Clicks or Impressions:",
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Row(
                                  children: [
                                    Radio(
                                      value: 0,
                                      groupValue: _radioValue,
                                      onChanged: _handleRadioValueChange,
                                    ),
                                    Text(
                                      'CPC',
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
                                      'CPM',
                                      style: new TextStyle(fontSize: 16.0),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      "Maximum Count:",
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
                                    //controller: _emailControl,
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
                                            "Add Placement",
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
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'External Placements ',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'No Placements',
                      ),
                    ),
                  ],
                ),
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

  _selectStartDate(BuildContext context) async {
    final DateTime selected = await showDatePicker(
      context: context,
      initialDate: startDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != startDate)
      setState(() {
        startDate = selected;
      });
  }

  _selectEndDate(BuildContext context) async {
    final DateTime selected = await showDatePicker(
      context: context,
      initialDate: endDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != endDate)
      setState(() {
        endDate = selected;
      });
  }
}
