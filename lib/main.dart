import 'package:flutter/material.dart';
import 'footballclub_main.dart';

void main() => runApp(FootballClub());

class FootballClub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football Club',
      home: new FootballClubMain(),
    );
  }
}
