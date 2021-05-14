import 'package:flutter/material.dart';
import 'package:game_streaming/utils/data.dart';
import 'package:game_streaming/shared/rounded_label.dart';
import 'package:game_streaming/shared/broadcast_item.dart';

class GameItem extends StatelessWidget {
  final Game game;

  GameItem({@required this.game});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  game.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              RoundedLabel(
                small: true,
                color: Colors.red,
                text: "Live",
              ),
            ],
          ),
        ),
        BroadCastItem(
          title: game.subTitle,
          imageUrl: game.imageUrl,
          live: true,
          user: game.users,
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 32),
          child: Text(
            game.description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
