import 'package:archi_website/constants/constants.dart';
import 'package:archi_website/styles/archi_theme.dart';
import 'package:flutter/cupertino.dart';

class FloatingHeaderCards extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FloatingHeaderState();
}

class _FloatingHeaderState extends State<FloatingHeaderCards> {
  @override
  Widget build(BuildContext context) => cardHolders();

  Widget cardHolders() => Container(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          card(),
          SizedBox(width: MediaQuery.of(context).size.width * 0.015),
          card2(),
          SizedBox(width: MediaQuery.of(context).size.width * 0.015),
          card3()
        ]),
      );

  Widget card() => Container(
        width: MediaQuery.of(context).size.width * 0.15,
        height: MediaQuery.of(context).size.height * 0.35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
            color: ArchiAppTheme.white),
        child: Column(children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.03,
              decoration: BoxDecoration(
                  color: ArchiAppTheme.white,
                  image: DecorationImage(
                      image: new AssetImage("assets/images/archi_img_4.jpg"),
                      fit: BoxFit.fill))),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Text(
            "Architecture\nDesign",
            textAlign: TextAlign.center,
            style: TextStyle(
              height: MediaQuery.of(context).size.height * 0.0013,
              fontFamily: Constants.POPPINS,
              fontWeight: FontWeight.w600,
              color: ArchiAppTheme.nearlyBlack,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: Text(
                Constants.DESC_,
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: MediaQuery.of(context).size.height * 0.0016,
                  fontFamily: Constants.POPPINS,
                  fontWeight: FontWeight.w400,
                  color: ArchiAppTheme.nearlyBlack,
                  fontSize: 11.0,
                ),
              )),
          SizedBox(height: MediaQuery.of(context).size.height * 0.025),
          showMoreBtn()
        ]),
      );

  Widget card2() => Container(
        width: MediaQuery.of(context).size.width * 0.15,
        height: MediaQuery.of(context).size.height * 0.35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
            color: ArchiAppTheme.white),
        child: Column(children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.03,
              decoration: BoxDecoration(
                  color: ArchiAppTheme.white,
                  image: DecorationImage(
                      image: new AssetImage("assets/images/archi_img_5.jpg"),
                      fit: BoxFit.fill))),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Text(
            "Construction\nWork",
            textAlign: TextAlign.center,
            style: TextStyle(
              height: MediaQuery.of(context).size.height * 0.0013,
              fontFamily: Constants.POPPINS,
              fontWeight: FontWeight.w600,
              color: ArchiAppTheme.nearlyBlack,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: Text(
                Constants.DESC_,
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: MediaQuery.of(context).size.height * 0.0016,
                  fontFamily: Constants.POPPINS,
                  fontWeight: FontWeight.w400,
                  color: ArchiAppTheme.nearlyBlack,
                  fontSize: 11.0,
                ),
              )),
          SizedBox(height: MediaQuery.of(context).size.height * 0.025),
          showMoreBtn()
        ]),
      );

  Widget card3() => Container(
        width: MediaQuery.of(context).size.width * 0.15,
        height: MediaQuery.of(context).size.height * 0.35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
            color: ArchiAppTheme.white),
        child: Column(children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.03,
              decoration: BoxDecoration(
                  color: ArchiAppTheme.white,
                  image: DecorationImage(
                      image: new AssetImage("assets/images/archi_img_6.jpg"),
                      fit: BoxFit.fill))),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Text(
            "Building\nAssessment",
            textAlign: TextAlign.center,
            style: TextStyle(
              height: MediaQuery.of(context).size.height * 0.0013,
              fontFamily: Constants.POPPINS,
              fontWeight: FontWeight.w600,
              color: ArchiAppTheme.nearlyBlack,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: Text(
                Constants.DESC_,
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: MediaQuery.of(context).size.height * 0.0016,
                  fontFamily: Constants.POPPINS,
                  fontWeight: FontWeight.w400,
                  color: ArchiAppTheme.nearlyBlack,
                  fontSize: 11.0,
                ),
              )),
          SizedBox(height: MediaQuery.of(context).size.height * 0.025),
          showMoreBtn()
        ]),
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
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.01,
                bottom: MediaQuery.of(context).size.height * 0.01,
                right: 25.0,
                left: 25.0),
            child: Text(
              "Read more",
              style: TextStyle(
                fontFamily: Constants.POPPINS,
                fontWeight: FontWeight.w400,
                color: ArchiAppTheme.greyTxt,
                fontSize: 12.0,
              ),
            )),
      );
}
