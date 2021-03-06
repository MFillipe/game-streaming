import 'package:flutter/material.dart';
import 'package:game_streaming/utils/constants.dart';
import 'package:game_streaming/screens/explore/explore_all.dart';
import 'package:game_streaming/screens/explore/popular_channels.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  Widget currentWidgetView;

  @override
  void initState() {
    super.initState();
    setState(() {
      switchTo("explore_all");
    });
  }

  switchTo(String widgetName) {
    setState(() {
      switch (widgetName) {
        case "explore_all":
          currentWidgetView = ExploreAll(onPress: () {
            switchTo("popular_channels");
          });
          break;
        case "popular_channels":
          currentWidgetView = PopularChannels(onPress: () {
            switchTo("explore_all");
          });
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: AnimatedSwitcher(
        duration: Duration(microseconds: 250),
        child: currentWidgetView,
      ),
    );
  }
}
