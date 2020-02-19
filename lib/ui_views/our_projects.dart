import 'package:archi_website/constants/constants.dart';
import 'package:archi_website/styles/archi_theme.dart';
import 'package:flutter/cupertino.dart';

class OurProjectsView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OurProjectState();
}

class _OurProjectState extends State<OurProjectsView> {
  @override
  Widget build(BuildContext context) => ourProjBody();

  Widget ourProjBody() => Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.23),
                child: Text(
                  Constants.OUR_PROJ,
                  style: TextStyle(
                    fontFamily: Constants.POPPINS,
                    fontWeight: FontWeight.w400,
                    color: ArchiAppTheme.blueFont,
                    fontSize: 26.0,
                  ),
                )),
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            Container(
                height: MediaQuery.of(context).size.height * 0.36,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: ArchiAppTheme.white,
                 
                  image: DecorationImage(
                    image: new AssetImage("assets/images/archi_img_3.jpg"),
                    fit: BoxFit.fill,
                  ))
      
                    )
          ]));
}
