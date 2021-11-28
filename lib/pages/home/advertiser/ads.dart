import 'package:ad_synergy/utils/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';

class AdvertisementAdsPage extends StatefulWidget {
  @override
  _AdvertisementAdsPageState createState() => _AdvertisementAdsPageState();
}

class _AdvertisementAdsPageState extends State<AdvertisementAdsPage> {
  bool isAdsDisplayContainer = false;
  bool isAdvertDisplayContainer = false;
  String _dropDownAd;
  String _dropDownAdvert;
  String _dropDownMedia;
  bool htmlValue = false;
  bool textValue = false;
  bool videoValue = false;
  bool imageValue = false;
  bool gifValue = false;
  bool svgValue = false;

  String fileName;
  String path;
  Map<String, String> paths;
  List<String> extensions;
  bool isLoadingPath = false;
  bool isMultiPick = false;
  FileType fileType;
  void _openFileExplorer() async {
    setState(() => isLoadingPath = true);
    try {
      path = await FilePicker.getFilePath(
          type: fileType != null ? fileType : FileType.any,
          allowedExtensions: extensions);
      paths = null;
    } on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    }
    if (!mounted) return;
    setState(() {
      isLoadingPath = false;
      fileName = path != null
          ? path.split('/').last
          : paths != null
          ? paths.keys.toString()
          : '...';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.adset),
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
                        Text("Ad Sets ", style: TextStyle(fontSize: 20)),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isAdsDisplayContainer = !isAdsDisplayContainer;
                            });
                          },
                          child: Text(isAdsDisplayContainer ? "-" : '+',
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
                        Text("Advert ", style: TextStyle(fontSize: 20)),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isAdvertDisplayContainer =
                              !isAdvertDisplayContainer;
                            });
                          },
                          child: Text(isAdvertDisplayContainer ? "-" : '+',
                              style: TextStyle(
                                fontSize: 28,
                              )),
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
                // Row(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(left: 20),
                //       child: Text(
                //         'Default Placements ?',
                //         style: TextStyle(
                //             fontSize: 24, fontWeight: FontWeight.bold),
                //       ),
                //     ),
                //   ],
                // ),
                // Row(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(left: 20),
                //       child: Text(
                //         'No Placements',
                //       ),
                //     ),
                //   ],
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // Row(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(left: 20),
                //       child: Text(
                //         'Internal Placements ',
                //         style: TextStyle(
                //             fontSize: 24, fontWeight: FontWeight.bold),
                //       ),
                //     ),
                //   ],
                // ),
                // Row(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(left: 20),
                //       child: Text(
                //         'No Placements',
                //       ),
                //     ),
                //   ],
                // ),
                isAdsDisplayContainer
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
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              Text(
                                "Product:",
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
                          padding: const EdgeInsets.fromLTRB(8, 6, 0, 0),
                          child: Row(
                            children: [
                              Text(
                                "Set Name:",
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
                                hintText: 'Name your ad set.',
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
                                "Width:",
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
                                "Height:",
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
                              Container(
                                width: 90,
                                child: Text(
                                  "HTML: ",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Checkbox(
                                value: this.htmlValue,
                                onChanged: (bool value) {
                                  setState(() {
                                    this.htmlValue = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              Container(
                                width: 90,
                                child: Text(
                                  "Text:  ",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Checkbox(
                                value: this.textValue,
                                onChanged: (bool value) {
                                  setState(() {
                                    this.textValue = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              Container(
                                width: 90,
                                child: Text(
                                  "Image:  ",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Checkbox(
                                value: this.imageValue,
                                onChanged: (bool value) {
                                  setState(() {
                                    this.imageValue = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              Container(
                                width: 90,
                                child: Text(
                                  "Video:  ",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Checkbox(
                                value: this.videoValue,
                                onChanged: (bool value) {
                                  setState(() {
                                    this.videoValue = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              Container(
                                width: 90,
                                child: Text(
                                  "Gif:  ",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Checkbox(
                                value: this.gifValue,
                                onChanged: (bool value) {
                                  setState(() {
                                    this.gifValue = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              Container(
                                width: 90,
                                child: Text(
                                  "SVG:  ",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Checkbox(
                                value: this.svgValue,
                                onChanged: (bool value) {
                                  setState(() {
                                    this.svgValue = value;
                                  });
                                },
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
                                      "Add Ad Set",
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
                                        isAdsDisplayContainer = false;
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
                isAdvertDisplayContainer
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
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              Text(
                                "Product:",
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
                                hint: _dropDownAdvert == null
                                    ? Text(
                                  'Select value',
                                  style:
                                  TextStyle(color: Colors.blue),
                                )
                                    : Text(
                                  _dropDownAdvert,
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
                                      _dropDownAdvert = val;
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
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
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                hintText:
                                'Your name for the Advertisement',
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
                                "Width:",
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
                                "Height:",
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
                                "Media:",
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
                                hint: _dropDownMedia == null
                                    ? Text(
                                  'Select Media',
                                  style:
                                  TextStyle(color: Colors.blue),
                                )
                                    : Text(
                                  _dropDownMedia,
                                  style:
                                  TextStyle(color: Colors.blue),
                                ),
                                isExpanded: true,
                                iconSize: 30.0,
                                style: TextStyle(color: Colors.blue),
                                items: [
                                  'Image',
                                  'HTML',
                                  'SVG',
                                  'Text',
                                  'Video '
                                ].map(
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
                                      _dropDownMedia = val;
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              Text(
                                "landing Page:",
                                style: TextStyle(fontSize: 18),
                              ),
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
                                "File: ",
                                style: TextStyle(fontSize: 18),
                              ),
                              TextButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Theme.of(context).accentColor),
                                  foregroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Colors.white),
                                ),
                                onPressed: () => _openFileExplorer(),
                                child: Text("Choose File"),
                              ),
                            ],
                          ),
                        ),
                        Builder(
                          builder: (BuildContext context) => isLoadingPath
                              ? Padding(
                              padding:
                              const EdgeInsets.only(bottom: 10.0),
                              child:
                              const CircularProgressIndicator())
                              : path != null || paths != null
                              ? Container(
                            padding: const EdgeInsets.only(
                                bottom: 30.0),
                            child: Text(fileName.toString()),
                          )
                              : Container(),
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
                                      "Add Advert",
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
                                        isAdvertDisplayContainer = false;
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
//                      //  openPopup(context);
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
