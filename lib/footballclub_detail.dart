import 'package:flutter/material.dart';

class FootballClubDetail extends StatelessWidget {
  final String assetLocation;
  final String clubName;
  final String clubDescription;

  const FootballClubDetail(
      {Key key, this.assetLocation, this.clubName, this.clubDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Football Club Detail',
      home: new Scaffold(
        appBar: AppBar(
          title: Text(clubName),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: new Container(
          padding: EdgeInsets.all(16.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Center(
                child: Image.asset(
                  assetLocation,
                  height: 100.0,
                  width: 100.0,
                ),
              ),
              new Center(
                  child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  clubName,
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              )),
              new Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(clubDescription),
              )
            ],
          ),
        ),
      ),
    );
  }
}
