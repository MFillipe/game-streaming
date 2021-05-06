import 'package:flutter/material.dart';
import 'package:game_streamming/screens/explore/explore.dart';
import 'package:game_streamming/screens/search/search.dart';
import 'package:game_streamming/screens/games/games.dart';
import 'package:game_streamming/screens/profile/profile.dart';
import 'package:game_streamming/utils/constants.dart';
import 'package:game_streamming/shared/bottom_navigation_item.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Master extends StatefulWidget {
  @override
  _MasterState createState() => _MasterState();
}

class _MasterState extends State<Master> {
  List<bool> bottomNavigationItemStatus = [true, false, false, false];

  Widget currentWidgetView;

  @override
  void initState() {
    super.initState();
    setState(() {
      currentWidgetView = Explore();
    });
  }

  setCurrentWidgetView(int i) {
    setState(() {
      switch (i) {
        case 0:
          currentWidgetView = Explore();
          break;
        case 1:
          currentWidgetView = Search();
          break;
        case 2:
          currentWidgetView = Games();
          break;
        case 3:
          currentWidgetView = Profile();
          break;
      }

      bottomNavigationItemStatus = [i == 0, i == 1, i == 2, i == 3];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: Duration(microseconds: 250),
        child: currentWidgetView,
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.only(bottom: 10),
        color: kBottomNavigaionBar,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavigationItem(
                iconData: Icons.home,
                selected: bottomNavigationItemStatus[0],
                onPress: () {
                  setCurrentWidgetView(0);
                }),
            BottomNavigationItem(
                iconData: Icons.search,
                selected: bottomNavigationItemStatus[1],
                onPress: () {
                  setCurrentWidgetView(1);
                }),
            BottomNavigationItem(
                iconData: Ionicons.ios_trophy,
                selected: bottomNavigationItemStatus[2],
                onPress: () {
                  setCurrentWidgetView(2);
                }),
            BottomNavigationItem(
                iconData: Icons.supervised_user_circle,
                selected: bottomNavigationItemStatus[3],
                onPress: () {
                  setCurrentWidgetView(3);
                }),
          ],
        ),
      ),
    );
  }
}
