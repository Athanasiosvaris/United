import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 202, 196, 208),
      appBar: AppBar(
          title: const Text('Welcome Dimitris',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 89, 61, 167)),
      body: Padding(
          padding: const EdgeInsets.all(5),
          child: ListView(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20),
                child: const SizedBox(
                  width: 200, height: 50),
              )
            ],
          )),
    );
  }
}
