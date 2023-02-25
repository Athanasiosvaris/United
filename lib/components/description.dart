import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Material(
              elevation: 10,
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              color: const Color.fromARGB(255, 98, 91, 113),
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white, fontFamily: 'Roboto'),
                ),
              )),
        ),
        Expanded(
          child: Container(),
        )
      ],
    );
  }
}
