import 'package:flutter/material.dart';
import 'package:united/components/labeled_checkbox.dart';

import 'package:united/routes.dart';

class SignUpPagePrivacy extends StatefulWidget {
  const SignUpPagePrivacy({Key? key}) : super(key: key);

  @override
  State<SignUpPagePrivacy> createState() => _SignUpPagePrivacy();
}

class _SignUpPagePrivacy extends State<SignUpPagePrivacy> {
  bool grades = false;
  bool news = false;
  bool messages = false;
  bool courses = false;
  bool trackOn = false;
  bool trackOff = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 202, 196, 208),
        body: Padding(
            padding: const EdgeInsets.all(5),
            child: ListView(children: <Widget>[
              Container(
                  height: 100,
                  alignment: Alignment.center,
                  // padding: const EdgeInsets.all(5),
                  child: const Text(
                    'Become Part of the community!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: const Text(
                    'Your privacy matters',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  )),
              const SizedBox(height: 40),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: Material(
                  elevation: 10,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  child: Column(
                    children: [
                      LabeledCheckbox(
                        icon: Icons.grade,
                        label: 'Grades from your university',
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        value: grades,
                        onChanged: (bool newValue) {
                          setState(() {
                            grades = true;
                          });
                        },
                      ),
                      LabeledCheckbox(
                        icon: Icons.newspaper,
                        label: 'News & Updates from regarding your courses',
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        value: news,
                        onChanged: (bool newValue) {
                          setState(() {
                            news = true;
                          });
                        },
                      ),
                      LabeledCheckbox(
                        icon: Icons.message,
                        label: 'Messages from friends',
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        value: messages,
                        onChanged: (bool newValue) {
                          setState(() {
                            messages = true;
                          });
                        },
                      ),
                      LabeledCheckbox(
                        icon: Icons.play_lesson,
                        label: 'Courses updates',
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        value: courses,
                        onChanged: (bool newValue) {
                          setState(() {
                            courses = true;
                          });
                        },
                      ),
                      LabeledCheckbox(
                        icon: Icons.circle,
                        label: 'Track me while on app',
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        value: trackOn,
                        onChanged: (bool newValue) {
                          setState(() {
                            trackOff = true;
                          });
                        },
                      ),
                      LabeledCheckbox(
                        icon: Icons.circle_outlined,
                        label: 'Track me while off app',
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        value: trackOff,
                        onChanged: (bool newValue) {
                          setState(() {
                            trackOff = true;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                height: 80,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: const Size(150, 60),
                                        elevation: 10,
                                        shape: const StadiumBorder(),
                                        backgroundColor: const Color.fromARGB(
                                            255, 89, 61, 167)),
                                    child: const Text(
                                      'Back',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    }))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerRight,
                                height: 80,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: const Size(150, 60),
                                        elevation: 10,
                                        shape:
                                            const StadiumBorder(), //Etsi kano to button rechtangle with circular
                                        backgroundColor: const Color.fromARGB(
                                            255, 89, 61, 167)),
                                    child: const Text(
                                      'Next',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(context, app);
                                    })))
                      ]))
            ])));
  }
}
