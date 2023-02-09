import 'package:flutter/material.dart';
import 'package:united/signin_page.dart';
import 'package:united/signup_page.dart';

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
                primary: const Color.fromARGB(255, 202, 196, 208),
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
  // ignore: library_private_types_in_public_api
  _Firstscreen createState() => _Firstscreen();
}

class _Firstscreen extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 202, 196, 208),

        // ignore: prefer_const_constructors
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                const SizedBox(
                  //Etsi vazo empty space
                  height: 50.00,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //Center Row contents horizontally
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 50.00,
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
                    const Icon(
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
                Container(
                  height: 300.00,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.house,
                    size: 150,
                  ),
                ),
                Container(
                    height: 80,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        shape: const StadiumBorder(),
                        backgroundColor:
                            const Color.fromARGB(255, 154, 130, 219),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()));
                      },
                    )),
                const SizedBox(
                  //Etsi vazo empty space
                  height: 20,
                ),
                Container(
                    height: 80,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 5,
                            shape:
                                const StadiumBorder(), //Etsi kano to button rechtangle with circular
                            backgroundColor:
                                const Color.fromARGB(255, 255, 255, 255)),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInPage()));
                        })),
              ],
            )));
  }
}
