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
    Game("RE8: VILLAGE", "Capcom", "Resident Evil 8: Village",
        "assets/images/residentevil.jpg", "194.2K", "126.347"),
    Game(
        "Super Smash Bros",
        "Nintendo",
        "Super Smash Bros. Ultimate World Championship 2021 3v3",
        "assets/images/supersmash.png",
        "132K",
        "126.347"),
    Game(
        "Call of Duty WARZONE",
        "Ubsoft",
        "RERUN: Astralis VS FaZe clan[vardansk] Map1 - ESL One: Road to Rio - Upper Bracket Final - EU",
        "assets/images/codwarzone.jpg",
        "168.7K",
        "101.646"),
    Game(
        "Fifa 21",
        "EA SPORTS",
        "Qualification rounds and semi finals - Champions League",
        "assets/images/fifa21.jpg",
        "97.1K",
        "300.646"),
    Game("Hollow Knight", "Team Cherry", "Hollow Knight: Gameplay",
        "assets/images/hollowknight.jpg", "124.6K", "126.347"),
    Game(
        "Street Fighter V",
        "Capcom",
        "Street Fighter Championship: Team USA vs Team Japan",
        "assets/images/streetfight.jpg",
        "152.7K",
        "126.347"),
    Game("Dark Souls III", "FromSoftware", "Dark Souls III: Gameplay",
        "assets/images/darksouls.jpg", "75.4K", "91.646"),
    Game("NieR: Automata", "Square Enix", "NieR: Automata Speed Star",
        "assets/images/nierautomata.png", "68.3K", "126.347"),
    Game("Grand Theft Auto", "Rockstar", "Grand Theft Auto  V Online",
        "assets/images/gta.jpg", "81.9K", "11327"),
  ];
}
