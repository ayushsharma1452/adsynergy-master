import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

//enum role { advOnly, pubOnly, mainlyAdv, mainlyPub }
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}


class _ProfileScreenState extends State<ProfileScreen> {

  //role _role = role.advOnly;
  String _role = "Advertiser Only";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          Align(
            alignment: Alignment.topRight,
            child: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: const Color(0xffe0f2f1),
              ),
              child: DropdownButton(
                value: _role,
                icon: const Icon(Icons.arrow_drop_down),
                onChanged: (String newValue) =>
                    setState(() {
                  _role = newValue;
                }),
                underline: Container(height: 0),
                items: <String>['Advertiser Only' , 'Publisher Only', 'Mainly Advertiser', 'Mainly Publisher']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: TextStyle(color: Colors.black),),
                  );
                }).toList(),
              ),

            ),

          ),



          SizedBox(
            height: 115,
            width: 115,
            child: Stack(
              fit: StackFit.expand,
              overflow: Overflow.visible,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/user.png'),
                ),
                Positioned(
                  right: -12,
                  bottom: 0,
                  child: SizedBox(
                    height: 46,
                    width: 46,
                    child: FlatButton(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        side: BorderSide(color: Colors.white),
                    ),
                      color: Color(0xfff5f6f9),
                      onPressed: () {},
                      child: SvgPicture.asset('assets/images/CameraIcon.svg'),
                    ),
                  ),
                )
              ],
            ),
            ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: FlatButton(
              padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: Color(0xffc8e6c9),
                onPressed: () {},
                child: Row(
                  children: [
                    Expanded(child: Text(
                      "Corporate Profile",
                      style: Theme.of(context).textTheme.bodyText1,)
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: Color(0xffc8e6c9),
                onPressed: () {},
                child: Row(
                  children: [
                    Expanded(child: Text(
                      "Professional Profile",
                      style: Theme.of(context).textTheme.bodyText1,)
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: Color(0xffc8e6c9),
                onPressed: () {},
                child: Row(
                  children: [
                    Expanded(child: Text(
                      "Advertiser Profile",
                      style: Theme.of(context).textTheme.bodyText1,)
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: Color(0xffc8e6c9),
                onPressed: () {},
                child: Row(
                  children: [
                    Expanded(child: Text(
                      "Publisher Profile",
                      style: Theme.of(context).textTheme.bodyText1,)
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                )
            ),
          ),
        ],)
    );
  }
}