import 'package:archi_website/constants/constants.dart';
import 'package:archi_website/styles/archi_theme.dart';
import 'package:flutter/cupertino.dart';

class NewsAEventView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewsAEventState();
}

class _NewsAEventState extends State<NewsAEventView> {
  @override
  Widget build(BuildContext context) => newsEventBody();

  Widget newsEventBody() => Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.23),
                child: Text(
                  Constants.NEWS_EVENTS,
                  style: TextStyle(
                    fontFamily: Constants.POPPINS,
                    fontWeight: FontWeight.w400,
                    color: ArchiAppTheme.blueFont,
                    fontSize: 26.0,
                  ),
                )),
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            horizRow()
          ]));

  Widget horizRow() => Container(
      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.23),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
        newsColumns(),
        SizedBox(width: 20.0),
        newsColumns(),
        SizedBox(width: 20.0),
        newsColumns()
      ]));

  Widget newsColumns() =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        Text(
          Constants.WE_CARE,
          style: TextStyle(
            fontFamily: Constants.POPPINS,
            fontWeight: FontWeight.w400,
            color: ArchiAppTheme.nearlyBlack,
            fontSize: 19.0,
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
