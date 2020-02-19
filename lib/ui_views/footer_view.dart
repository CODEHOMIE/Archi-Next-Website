import 'package:archi_website/styles/archi_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FooterView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FooterViewState();
  
}

class _FooterViewState extends State<FooterView> {
  @override
  Widget build(BuildContext context) => footerBody();

  Widget footerBody() =>  Container(
    height: MediaQuery.of(context).size.height * 0.35,
    child: Stack(
      children: <Widget>[
        footerBanner(),
        headerGradient(),
      ],)
  );

  Widget headerGradient() => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
            ArchiAppTheme.archiBlueShade.withOpacity(0.9),
            ArchiAppTheme.archiPurpleShade.withOpacity(0.9)
          ])));
  

Widget footerBanner() => Container(
        height: MediaQuery.of(context).size.height * 0.35,
        decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              image: new AssetImage("assets/images/header_bg_.jpg"),
              fit: BoxFit.cover,
            )),
      );

}