import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 202, 196, 208),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Welcome Dimitris',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 89, 61, 167)),
      body: Container(
        padding: const EdgeInsets.all(5),
        child: Column(children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: 40,
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Container(color: Colors.grey, width: 50)
                  ],
                ),
              ),
              Container(
                color: Colors.purple,
                height: 200,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 100,
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      color: Colors.purple,
                    ),
                    Expanded(child: Container()),
                    Container(
                      width: 150,
                      color: Colors.purple,
                    )
                  ],
                ),
              )
            ],
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Container(),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Container()
        ]),
      ),
    );
  }
}
