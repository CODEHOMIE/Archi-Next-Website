import 'package:flutter/cupertino.dart';

import 'desktoptoolbar_menu.dart';

class DesktopToolbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DesktopToolbarState();
}

class _DesktopToolbarState extends State<DesktopToolbar> {
  @override
  Widget build(BuildContext context) => deskTopToolBar();

  Widget deskTopToolBar() => Column(children: <Widget>[
        SizedBox(
          height:  MediaQuery.of(context).size.height * 0.08,
        ),
        Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            archiLogo(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.18,
            ),
            DesktopMenu(),
          ],
        ))
      ]);

  Widget archiLogo() => Image(
        image: AssetImage("assets/images/archi_logo.jpg"),
      );
}
