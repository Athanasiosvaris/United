import 'package:flutter/material.dart';

class LeaderboardBox extends StatelessWidget {
  const LeaderboardBox({
    super.key,
    required this.number,
    required this.name,
    required this.score,
  });

  final String number;
  final String name;
  final String score;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
                number),
          ),
          Image.asset(
            'images/Dimi.png',
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: "Roboto",
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              score,
              style: const TextStyle(
                fontFamily: "Serif",
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
