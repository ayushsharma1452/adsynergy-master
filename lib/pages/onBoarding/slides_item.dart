import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ad_synergy/pages/onBoarding/slides.dart';
import 'package:google_fonts/google_fonts.dart';

/*

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);




   @override
  Widget build(BuildContext context) {
    return Column(
     mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              image: AssetImage(slideList[index].imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          slideList[index].title,
          style: TextStyle(
            fontSize: 22,
            color: Theme.of(context).primaryColor,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          slideList[index].description,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

   */



//height: MediaQuery.of(context).size.height,
//child: SingleChildScrollView(
//reverse: true,

/*


class SlideItem extends StatefulWidget
{
  _SlideItemScreenState createState() => new _SlideItemScreenState();


}

class _SlideItemScreenState extends State<SlideItem> with TickerProviderStateMixin {



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
                                    Colors.white,
                                    Colors.white
                                  ]
                              )
                          ),

                          child: SingleChildScrollView(
                              physics: AlwaysScrollableScrollPhysics(),
                              padding: EdgeInsets.symmetric(
                                horizontal: 25,
                                vertical: 110,
                                //vertical:50,
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'AdSynergy',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Roboto'
                                      ),
                                    ),

                                    SizedBox(
                                        height: 44
                                    ),

                                  //  buildEmail(),

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

*/




class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);




  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              image: AssetImage(slideList[index].imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          slideList[index].title,
        //  style: GoogleFonts.lato(
          style: GoogleFonts.mcLaren(
            textStyle: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color:Color(0xff5ac18e),
            )
          ),
         /* style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily: 'Comic Neue',

            color:Color(0xff5ac18e),
          ),*/
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          slideList[index].description,
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
              textStyle: TextStyle(
                fontSize: 15,
               // fontWeight: FontWeight.bold,
                //color:Color(0xff5ac18e),
              )
          ),
        ),
      ],
    );
  }
}
