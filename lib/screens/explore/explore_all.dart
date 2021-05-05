import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:game_streamming/shared/category_item.dart';
import 'package:game_streamming/shared/custom_filled_field.dart';
import 'package:game_streamming/shared/popular_channel_item.dart';
import 'package:game_streamming/shared/rounded_label.dart';

class ExploreAll extends StatefulWidget {
  @override
  _ExploreAllState createState() => _ExploreAllState();
}

class _ExploreAllState extends State<ExploreAll> {
  int _currentPage = 0;
  int _totalPages = 4;

  List<Widget> buildPageIndicator() {
    List<Widget> list = [];
    for (var i = 0; i < _totalPages; i++) {
      list.add(buildIndicator(i == _currentPage));
    }

    return list;
  }

  Widget buildIndicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(microseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.grey[600],
        shape: BoxShape.circle,
      ),
    );
  }

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
                SizedBox(
                    height: 32,
                    child: Image.asset(
                      "assets/icons/joystick.png",
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: CustomFilledField(
                  label: "Search games, channels...",
                  iconData: Octicons.settings,
                )),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Explore",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            height: 1,
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
                  Container(
                    height: 250,
                    width: double.infinity,
                    child: PageView(
                      physics: BouncingScrollPhysics(),
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: [
                        buildPage(
                            "assets/images/LEAGUE_OF_LEGENDS.jpg",
                            "assets/images/LEAGUE_OF_LEGENDS.jpg",
                            "Live League of Legends",
                            "ForeverYoungGaming"),
                        buildPage(
                            "assets/images/FORTNITE.jpg",
                            "assets/images/FORTNITE.jpg",
                            "Live Fortnite Chill",
                            "ForeverYoungGaming"),
                        buildPage(
                            "assets/images/FIFA.jpg",
                            "assets/images/FIFA.jpg",
                            "Live Fifa 21",
                            "ForeverYoungGaming"),
                        buildPage(
                            "assets/images/FALL_GUYS.jpg",
                            "assets/images/FALL_GUYS.jpg",
                            "Live Fall Guys",
                            "ForeverYoungGaming"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: buildPageIndicator(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular channels",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Open all",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: PopularChannelItem(
                            imageUrl: "assets/images/LEAGUE_OF_LEGENDS.jpg",
                            name: "Jukes",
                            variation: true,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: PopularChannelItem(
                            imageUrl: "assets/images/LEAGUE_OF_LEGENDS.jpg",
                            name: "Jukes",
                            variation: true,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: PopularChannelItem(
                            imageUrl: "assets/images/LEAGUE_OF_LEGENDS.jpg",
                            name: "Jukes",
                            variation: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Top categories",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Open all",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 16, right: 16, left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CategoryItem(
                            imageUrl: "assets/images/LEAGUE_OF_LEGENDS.jpg",
                            name: "MOBA"),
                        SizedBox(
                          width: 16,
                        ),
                        CategoryItem(
                            imageUrl: "assets/images/LEAGUE_OF_LEGENDS.jpg",
                            name: "FPS"),
                        SizedBox(
                          width: 16,
                        ),
                        CategoryItem(
                            imageUrl: "assets/images/LEAGUE_OF_LEGENDS.jpg",
                            name: "SPORTS"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPage(
      String userImage, String gameImage, String title, String subtitle) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(gameImage),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        alignment: Alignment.bottomCenter,
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(userImage), fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}