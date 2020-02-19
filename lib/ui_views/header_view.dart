import 'package:archi_website/constants/constants.dart';
import 'package:archi_website/styles/archi_theme.dart';
import 'package:archi_website/ui_views/floating_header_cards.dart';
import 'package:archi_website/widget/desktop_toolbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HeaderViewState();
}

class _HeaderViewState extends State<HeaderView> {
  @override
  Widget build(BuildContext context) => headerBody();

  Widget headerBody() => Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Stack(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Stack(children: <Widget>[
                headerBanner(),
                headerGradient(),
                DesktopToolbar(),
                mainTitleStr(),
              ])),
          Align(alignment: Alignment.bottomCenter, child: FloatingHeaderCards())
        ],
      ));

  Widget headerGradient() => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
            ArchiAppTheme.archiBlueShade.withOpacity(0.9),
            ArchiAppTheme.archiPurpleShade.withOpacity(0.9)
          ])));

  Widget headerBanner() => Container(
        height: MediaQuery.of(context).size.height * 0.6,
        decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              image: new AssetImage("assets/images/header_main_2.jpg"),
              fit: BoxFit.cover,
            )),
      );

  Widget mainTitleStr() => Container(
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.26,
        top: MediaQuery.of(context).size.height * 0.22,
      ),
      child: new RichText(
        textAlign: TextAlign.start,
        text: new TextSpan(
          style: new TextStyle(
            height: 1.5,
            letterSpacing: 1.3,
            fontSize: 28.0,
            wordSpacing: 2.5,
            color: ArchiAppTheme.font_white,
          ),
          children: <TextSpan>[
            new TextSpan(
                text: 'WE HAVE A PASSION\nIN CREATING NEW\nAND ',
                style: TextStyle(
                  fontFamily: Constants.POPPINS,
                  fontWeight: FontWeight.w200,
                  color: ArchiAppTheme.font_white,
                )),
            new TextSpan(
                text: 'UNIQUE SPACES',
                style: TextStyle(
                  fontFamily: Constants.POPPINS,
                  fontWeight: FontWeight.w600,
                  color: ArchiAppTheme.font_white,
                )),
          ],
        ),
      ));
}
