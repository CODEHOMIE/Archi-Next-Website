import 'package:archi_website/constants/constants.dart';
import 'package:archi_website/styles/archi_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelloView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HelloViewState();
}

class _HelloViewState extends State<HelloView> {
  @override
  Widget build(BuildContext context) => helloBody();

  Widget helloBody() => Container(child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    helloPart(),
    SizedBox(width: MediaQuery.of(context).size.width * 0.04),
    imagePart()
  ]));

  Widget helloPart() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      
        Text(
          Constants.HELLO,
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
        SizedBox(height: 30.0),
        showMoreBtn()
      ]);

      Widget imagePart() => Container(
        height: MediaQuery.of(context).size.height * 0.3,
        child: Image(image: AssetImage("assets/images/archi_img_1.jpg")),
      );

      Widget showMoreBtn() => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          border: Border.all(
                color: ArchiAppTheme.buttonGrey,
                width: 1.2,
              ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top:8.0, bottom: 8.0, right: 25.0, left: 25.0),
        child: Text(
          "Show more",
          style: TextStyle(
            fontFamily: Constants.POPPINS,
            fontWeight: FontWeight.w400,
            color: ArchiAppTheme.greyTxt,
            fontSize: 12.0,
          ),
        )) ,
      );
}
