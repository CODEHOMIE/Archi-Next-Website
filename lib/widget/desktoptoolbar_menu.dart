import 'package:archi_website/constants/constants.dart';
import 'package:archi_website/styles/archi_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesktopMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DesktopMenuState();
}

class _DesktopMenuState extends State<DesktopMenu> {
  @override
  Widget build(BuildContext context) => menuBody();

  Widget menuBody() => Container(
          child: Row(
        children: <Widget>[
          Text(
            Constants.HOME,
            style: TextStyle(
              fontFamily: Constants.POPPINS,
              fontWeight: FontWeight.w300,
              color: ArchiAppTheme.font_white,
              fontSize: 14.0,
            ),
          ),
          SizedBox(
            width: 40.0,
          ),
          Text(
            Constants.PROJECTS,
            style: TextStyle(
              fontFamily: Constants.POPPINS,
              fontWeight: FontWeight.w300,
              color: ArchiAppTheme.font_white,
              fontSize: 14.0,
            ),
          ),
          SizedBox(
            width: 30.0,
          ),
          Text(
            Constants.SOLUTIONS,
            style: TextStyle(
              fontFamily: Constants.POPPINS,
              fontWeight: FontWeight.w300,
              color: ArchiAppTheme.font_white,
              fontSize: 14.0,
            ),
          ),
          SizedBox(
            width: 30.0,
          ),
          Text(
            Constants.BLOG,
            style: TextStyle(
              fontFamily: Constants.POPPINS,
              fontWeight: FontWeight.w300,
              color: ArchiAppTheme.font_white,
              fontSize: 14.0,
            ),
          ),
          SizedBox(
            width: 30.0,
          ),
          Text(
            Constants.CONTACT,
            style: TextStyle(
              fontFamily: Constants.POPPINS,
              fontWeight: FontWeight.w300,
              color: ArchiAppTheme.font_white,
              fontSize: 14.0,
            ),
          ),
          SizedBox(
            width: 30.0,
          ),
          
        ],
      ));


}
