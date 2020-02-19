import 'package:archi_website/constants/constants.dart';
import 'package:archi_website/styles/archi_theme.dart';
import 'package:flutter/cupertino.dart';

class SolutionsView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SolutionsViewState();
}

class _SolutionsViewState extends State<SolutionsView> {
  @override
  Widget build(BuildContext context) => solutionsBody();

  Widget solutionsBody() => Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.23),
                child: Text(
                  Constants.SOLUTIONS_2,
                  style: TextStyle(
                    fontFamily: Constants.POPPINS,
                    fontWeight: FontWeight.w400,
                    color: ArchiAppTheme.blueFont,
                    fontSize: 26.0,
                  ),
                )),
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            solnRow("Safety solutions", "Design solutions"),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            solnRow("Enviromental solutions", "Risk solutions"),
          ]));

  Widget solnRow(String title_1, String title_2) => Container(
    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.23),
      child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
            children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Text(
            title_1,
            style: TextStyle(
              fontFamily: Constants.POPPINS,
              fontWeight: FontWeight.w400,
              color: ArchiAppTheme.nearlyBlack,
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            Constants.desc,
            style: TextStyle(
              fontFamily: Constants.POPPINS,
              fontWeight: FontWeight.w400,
              color: ArchiAppTheme.nearlyBlack,
              fontSize: 12.0,
            ),
          )
        ]),
        SizedBox(width: MediaQuery.of(context).size.width * 0.08),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Text(
            title_2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: Constants.POPPINS,
              fontWeight: FontWeight.w400,
              color: ArchiAppTheme.nearlyBlack,
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            Constants.desc,
            style: TextStyle(
              fontFamily: Constants.POPPINS,
              fontWeight: FontWeight.w400,
              color: ArchiAppTheme.nearlyBlack,
              fontSize: 12.0,
            ),
          )
        ])
      ]));
}
