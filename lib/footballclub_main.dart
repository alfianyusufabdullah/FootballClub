import 'package:flutter/material.dart';
import 'package:football_club/football_data.dart';
import 'footballclub.dart';

class FootballClubMain extends StatelessWidget {
  const FootballClubMain();

  @override
  Widget build(BuildContext context) {
    final footballClubs = <FootballClub>[];

    for (var i = 0; i < footballClubData.length; i++) {
      footballClubs.add(FootballClub(
        assetLocation: footballClubData[i].assetLocation,
        clubName: footballClubData[i].clubName,
        clubDescription: footballClubData[i].clubDescription,
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
