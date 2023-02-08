import 'package:flutter/material.dart';
import 'package:united/signin_page.dart';
import 'package:united/signup_page.dart';
//Evala 1 sxolio

void main() {
  runApp(const United());
}

class United extends StatelessWidget {
  const United({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// Τίτλος της εφαρμογής μας
      title: 'United',

      /// To thema ths efarmogis mas
      // theme: ThemeData(primarySwatch: Colors.amber),
      theme: ThemeData().copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: Color.fromARGB(255, 240, 220, 220),
              )),

      /// Arxikopoihsh ths arxikis thonis ths efarmogis mas (TaskListScreen)
      home: const Firstscreen(),
    );
  }
}

/// Ylopoihsh tis othonis Firstscreen san [StatefulWidget]
class Firstscreen extends StatefulWidget {
  const Firstscreen({Key? key}) : super(key: key);

  @override
  _Firstscreen createState() => _Firstscreen();
}

class _Firstscreen extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 240, 220, 220),

        // ignore: prefer_const_constructors
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  //Etsi vazo empty space
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //Center Row contents horizontally
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 50,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'UNI-TED',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      ),
                    ),
                    Icon(
                      Icons.school_outlined,
                      size: 40,
                    ),
                  ],
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Designed by students for students!',
                      style: TextStyle(fontSize: 20),
                    )),
                SizedBox(
                  // Etsi vazo empty space??sdasas
                  height: 100,
                ),
                Image.asset(
                  'assets/images/uni.png',
                  height: 100.0,
                ),
                SizedBox(
                  //Etsi vazo empty space
                  height: 100,
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Color.fromARGB(238, 157, 61, 206)),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Signup_page()));
                      },
                    )),
                SizedBox(
                  //Etsi vazo empty space
                  height: 20,
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape:
                                StadiumBorder(), //Etsi kano to button rechtangle with circular
                            backgroundColor:
                                Color.fromARGB(255, 255, 255, 255)),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signin_page()));
                        })),
              ],
            )));
  }
}
