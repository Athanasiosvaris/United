import 'package:flutter/material.dart';

class ProfileDescription extends StatelessWidget {
  const ProfileDescription({
    super.key,
    required this.description,
    required this.color,
  });

  final Color color;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
              topLeft: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0)),
          color: color,
        ),
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
        alignment: Alignment.center,
        child: Text(
          description,
          style: const TextStyle(
              fontFamily: 'Roboto',
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 15),
        ),
      ),
    );
  }
}
