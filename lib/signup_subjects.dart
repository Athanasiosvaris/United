import 'package:flutter/material.dart';
import 'package:united/signup_page.dart';
import 'main.dart';

class Signup_subjects extends StatefulWidget {
  const Signup_subjects({Key? key}) : super(key: key);

  @override
  _Signup_subjects createState() => _Signup_subjects();
}

class _Signup_subjects extends State<Signup_subjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 220, 220),
      body: Padding(
          padding: const EdgeInsets.all(5),
          child: ListView(children: <Widget>[
            SizedBox(
              //Etsi vazo empty space
              height: 50,
            ),
            Container(
                height: 50,
                alignment: Alignment.center,
                // padding: const EdgeInsets.all(5),
                child: const Text(
                  'Become Part of the community!',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                height: 50,
                alignment: Alignment.center,
                // padding: const EdgeInsets.all(5),
                child: const Text(
                  'Mark the subjects of your interest',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
          ])),
    );
  }
}
