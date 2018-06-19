import 'package:flutter/material.dart';
import 'footballclub.dart';

class FootballClubMain extends StatelessWidget {
  const FootballClubMain();

  static const _clubNames = <String>[
    'AC Milan',
    'Arsenal',
    'Barcelona',
    'Bayern Munchen',
    'Chelsea',
    'Manchester City',
    'Real Madrid',
    'Manchester United',
  ];

  static const _clubDescription = <String>[
    "A.C. Milan or simply Milan, is a professional football club in Milan, Italy, founded in 1899. The club has spent its entire history, with the exception of the 1980–81 and 1982–83 seasons, in the top flight of Italian football, known as Serie A since 1929–30.",
    "Arsenal Football Club is a professional football club based in Islington, London, England, that plays in the Premier League, the top flight of English football. The club has won 13 League titles, a record 13 FA Cups, two League Cups, the League Centenary Trophy, 15 FA Community Shields, one UEFA Cup Winners' Cup and one Inter-Cities Fairs Cup. It is also the only English club to go a 38-match league season unbeaten, receiving the nickname The Invincibles, and a special gold Premier League trophy.",
    "F.C. Barcelona is a Spanish football club from Barcelona, Catalonia. They are known for winning the treble (La Liga, the Copa Del Rey, and the UEFA Champions League) all in 1 season, twice, in the 2008 09 season and in the 2014 15 season. Their biggest rival is Real Madrid. Matches between F.C. Barcelona and Real Madrid are called \"El Clásico\", which means \"The Classic\" in Spanish. The team has won many tournaments, which is why Barcelona is considered one of the best teams in the world. F.C. Barcelona was founded by a group of football players led by Joan Gamper. Their home stadium, Camp Nou is the largest stadium in Europe with a capacity of 99,354",
    "FCB, Bayern Munich, or FC Bayern, is a German sports club based in Munich, Bavaria (Bayern). It is best known for its professional football team, which plays in the Bundesliga, the top tier of the German football league system, and is the most successful club in German football history, having won a record 28 national titles and 18 national cups.",
    "Chelsea Football Club is a professional football club in London, England, that competes in the Premier League. Founded in 1905, the club's home ground since then has been Stamford Bridge. Chelsea won the First Division title in 1955, followed by various cup competitions between 1965 and 1971. The past two decades have seen sustained success, with the club winning 21 trophies since 1997. In total, the club has won 27 major trophies; six titles, seven FA Cups, five League Cups and four FA Community Shields, one UEFA Champions League, two UEFA Cup Winners' Cups, one UEFA Europa League and one UEFA Super Cup.",
    "Manchester City Football Club are a football club in Manchester, England. Founded in 1880 as St. Mark's (West Gorton), they became Ardwick Association Football Club in 1887 and Manchester City in 1894. The club's home ground is the City of Manchester Stadium in east Manchester, which they moved to in 2003, having played at Maine Road since 1923.",
    "Founded on 6 March 1902 as Madrid Football Club, the club has traditionally worn a white home kit since inception. The word Real is Spanish for Royal and was bestowed to the club by King Alfonso XIII in 1920 together with the royal crown in the emblem. The team has played its home matches in the 81,044 capacity Santiago Bernabéu Stadium in downtown Madrid since 1947. Unlike most European sporting entities, Real Madrid\'s members (socios) have owned and operated the club throughout its history.",
    "Manchester United Football Club is a professional football club based in Old Trafford, Greater Manchester, England, that competes in the Premier League, the top flight of English football. Nicknamed \"the Red Devils\", the club was founded as Newton Heath LYR Football Club in 1878, changed its name to Manchester United in 1902 and moved to its current stadium, Old Trafford, in 1910.",
  ];

  static const _clubIconAsset = <String>[
    'assets/img_acm.png',
    'assets/img_arsenal.png',
    'assets/img_barca.png',
    'assets/img_bayern.png',
    'assets/img_chelsea.png',
    'assets/img_city.png',
    'assets/img_madrid.png',
    'assets/img_mu.png',
  ];

  @override
  Widget build(BuildContext context) {
    final footballClubs = <FootballClub>[];

    for (var i = 0; i < _clubNames.length; i++) {
      footballClubs.add(FootballClub(
        assetLocation: _clubIconAsset[i],
        clubName: _clubNames[i],
        clubDescription: _clubDescription[i],
      ));
    }

    Widget getList(Orientation orientation) {
      if (orientation == Orientation.portrait) {
        return new ListView.builder(
          itemBuilder: (context, index) => footballClubs[index],
          itemCount: footballClubs.length,
        );
      } else {
        return new GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) => footballClubs[index],
          itemCount: footballClubs.length,
        );
      }
    }

    return new Scaffold(
      appBar: AppBar(
        title: Text('Football Club'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) => new Container(
              child: getList(orientation),
            ),
      ),
    );
  }
}
