import 'package:flutter/material.dart';
import 'package:game_streaming/utils/constants.dart';
//import 'package:game_streaming/utils/data.dart';
import 'package:game_streaming/screens/games/games_all.dart';

class Games extends StatefulWidget {
  @override
  _GamesState createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: GamesAll(),
    );
  }
}
