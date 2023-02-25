import 'package:flutter/material.dart';

class BusyAreas extends StatelessWidget {
  const BusyAreas(
      {super.key,
      required this.icon,
      required this.place,
      required this.busy,
      required this.color});

  final IconData? icon;
  final String place;
  final String busy;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(25.0),
        child: Container(
          height: 70,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 28, 27, 31),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0),
                topLeft: Radius.circular(25.0),
                bottomLeft: Radius.circular(25.0)),
          ),
          alignment: Alignment.center,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 98, 91, 113),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0),
                        topLeft: Radius.circular(25.0),
                        bottomLeft: Radius.circular(25.0)),
                  ),
                  child: Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(color: Colors.white, icon)),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(place,
                              style: const TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        busy,
                        style: const TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                    Icon(Icons.people_rounded, color: color)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
