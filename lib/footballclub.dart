import 'package:flutter/material.dart';
import 'footballclub_detail.dart';

class FootballClub extends StatelessWidget {
  final String assetLocation;
  final String clubName;
  final String clubDescription;

  const FootballClub(
      {Key key, this.assetLocation, this.clubName, this.clubDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 100.0,
        child: InkWell(
          splashColor: Colors.grey,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => new FootballClubDetail(
                          assetLocation: assetLocation,
                          clubName: clubName,
                          clubDescription: clubDescription,
                        )));
          },
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    assetLocation,
                    height: 50.0,
                    width: 50.0,
                  ),
                ),
                Center(
                  child: new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      clubName,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
