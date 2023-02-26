import 'package:flutter/material.dart';

class LeaderboardBox extends StatelessWidget {
  const LeaderboardBox({
    super.key,
    required this.number,
    required this.name,
    required this.score,
    required this.imagePath,
  });

  final String number;
  final String name;
  final String score;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
            child: Text(
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
                number),
          ),
          Image.asset(imagePath),
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
