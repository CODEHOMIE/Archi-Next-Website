import 'package:archi_website/styles/archi_theme.dart';
import 'package:archi_website/ui_views/footer_view.dart';
import 'package:archi_website/ui_views/header_view.dart';
import 'package:archi_website/ui_views/hello_view.dart';
import 'package:archi_website/ui_views/news_and_event_view.dart';
import 'package:archi_website/ui_views/our_projects.dart';
import 'package:archi_website/ui_views/solutions_view.dart';
import 'package:archi_website/ui_views/what_people_say_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LandingPageState();
  
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ArchiAppTheme.background,
      body: landingBody(),
    );
  }

  Widget landingBody() => ListView(                 
    children: <Widget> [
      HeaderView(),
      SizedBox(height: MediaQuery.of(context).size.height * 0.16),
      HelloView(),
      SizedBox(height: MediaQuery.of(context).size.height * 0.20),
      OurProjectsView(),
      SizedBox(height: MediaQuery.of(context).size.height * 0.16),
      SolutionsView(),
      SizedBox(height: MediaQuery.of(context).size.height * 0.16),
      WhatPplSayView(),
      SizedBox(height: MediaQuery.of(context).size.height * 0.16),
      NewsAEventView(),
      SizedBox(height: MediaQuery.of(context).size.height * 0.16),
      FooterView(),

    ]
  );
  
}