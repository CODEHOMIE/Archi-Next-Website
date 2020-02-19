import 'package:archi_website/constants/constants.dart';
import 'package:archi_website/styles/archi_theme.dart';
import 'package:flutter/cupertino.dart';

class WhatPplSayView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WhatPplSayState();
}

class _WhatPplSayState extends State<WhatPplSayView> {
  @override
  Widget build(BuildContext context) => WhatPplSayBody();

  WhatPplSayBody() => Container(
    color: ArchiAppTheme.white,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
            whatSayPart(),
            SizedBox(width: MediaQuery.of(context).size.width * 0.04),
            imagePart()
          ]));

  Widget whatSayPart() => Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
        Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.23),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    Constants.WHAT_PPL_SAY,
                    style: TextStyle(
                      fontFamily: Constants.POPPINS,
                      fontWeight: FontWeight.w400,
                      color: ArchiAppTheme.blueFont,
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    Constants.desc,
                    style: TextStyle(
                      fontFamily: Constants.POPPINS,
                      fontWeight: FontWeight.w300,
                      color: ArchiAppTheme.nearlyBlack,
                      fontSize: 13.0,
                    ),
                  ),
                  SizedBox(height: 50.0),
                  
                ])),
                showMoreBtn()
      ]);

  Widget imagePart() => Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: ArchiAppTheme.white,
          image: DecorationImage(
            image: new AssetImage("assets/images/archi_img_2.jpg"),
            fit: BoxFit.fill,
          )));

  Widget showMoreBtn() => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          border: Border.all(
            color: ArchiAppTheme.buttonGrey,
            width: 1.2,
          ),
        ),
        child: Padding(
            padding:
                EdgeInsets.only(top: 8.0, bottom: 8.0, right: 25.0, left: 25.0),
            child: Text(
              "Show more",
              style: TextStyle(
                fontFamily: Constants.POPPINS,
                fontWeight: FontWeight.w400,
                color: ArchiAppTheme.greyTxt,
                fontSize: 12.0,
              ),
            )),
      );
}
