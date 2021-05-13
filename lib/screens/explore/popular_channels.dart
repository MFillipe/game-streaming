import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
//import 'package:game_streaming/shared/custom_field.dart';
import 'package:game_streaming/shared/custom_filled_field.dart';
import 'package:game_streaming/shared/popular_channel_item.dart';

class PopularChannels extends StatelessWidget {
  final Function onPress;

  PopularChannels({@required this.onPress});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    onPress();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Expanded(
                    child: CustomFilledField(
                  label: "Search games, channels...",
                  iconData: Octicons.settings,
                )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Popular channels",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Laguage: English",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                physics: BouncingScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 15,
                children: [
                  PopularChannelItem(
                      imageUrl: "assets/images/fallen.jpg",
                      name: "Fallen",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/jukes.jpg",
                      name: "Jukes",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/jumayumi1.jpg",
                      name: "Jumayumi1",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/brttoficial.jpg",
                      name: "BrTT",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/fifauser.jpg",
                      name: "Azhagal",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/nyviestephan.jpg",
                      name: "Nyvi Estephan",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/alanzoka.jpg",
                      name: "Alanzoka",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/ninja.jpg",
                      name: "Ninja",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/rafaballerini.jpg",
                      name: "Rafaela Ballerini",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/pimpimenta.jpg",
                      name: "Pimpimenta",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/revoltalol.jpg",
                      name: "Revoltalol",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/cellbit.jpg",
                      name: "Cellbit",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/xminks.jpg",
                      name: "xMinks",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/pewdiepie.jpg",
                      name: "PewDiePie",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/rubius.jpg",
                      name: "Rubius",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/sev7n.jpg",
                      name: "Sev7n",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/carolzinhasg.png",
                      name: "CarolzinhaSG",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/dianazambrozuski.jpg",
                      name: "Diana ZK",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/stonedyoda.jpg",
                      name: "StonedYoda",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/taco.jpg",
                      name: "Taco",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/legendarylea.jpg",
                      name: "LegendaryLea",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/kamikat.jpg",
                      name: "KamiKat",
                      variation: false),
                  PopularChannelItem(
                      imageUrl: "assets/images/felps.jpg",
                      name: "Felps",
                      variation: false),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
