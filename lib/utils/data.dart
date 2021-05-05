class Game {
  String title;
  String subTitle;
  String description;
  String imageUrl;
  String users;
  String viewers;

  Game(this.title, this.subTitle, this.description, this.imageUrl, this.users,
      this.viewers);
}

List<Game> getGames() {
  return <Game>[
    Game("League of Legends", "Riot Games", "PAIN VS INTZ",
        "assets/images/LEAGUE_OF_LEGENDS.jpg", "16890", "101.646"),
    Game(
        "Counter-Strike: Global offensive",
        "ESL_CSGO",
        "RERUN: Astralis VS Faze clan [Dust2] Map 1 - ESL ONE: Road to the victory",
        "assets/images/CSGO.jpg",
        "14720",
        "300.646"),
    Game("Fifa 21", "EA SPORTS", "PSG Vs Manchester City",
        "assets/images/FIFA.jpg", "12596", "91.646"),
    Game("Fortnite", "Epic Games", "Battle royale",
        "assets/images/FORTNITE.jpg", "15256", "126.347"),
    Game("Call of Duty: WarZone", "Ubsoft", "Surive",
        "assets/images/COD_WARZONE.jpg", "11499", "160.726"),
  ];
}
