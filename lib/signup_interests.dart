import 'package:flutter/material.dart';
import 'package:united/help_widgets/labeled_checkbox.dart';
import 'package:united/signup_page.dart';
import 'package:united/signup_privacy.dart';

class SignUpPageInterests extends StatefulWidget {
  const SignUpPageInterests({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignUpPageInterests createState() => _SignUpPageInterests();
}

class _SignUpPageInterests extends State<SignUpPageInterests> {
  bool math = false;
  bool physics = false;
  bool chemistry = false;
  bool computerScience = false;
  bool biology = false;
  bool economics = false;
  bool law = false;
  bool artHumanities = false;
  bool medicine = false;

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
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: const Text(
                    'Mark the subjects of your interest',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  )),
              const SizedBox(height: 40),
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  alignment: Alignment.center,
                  child: Material(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                    color: Colors.white,
                    child: LabeledCheckbox(
                      icon: Icons.calculate,
                      label: 'Math',
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      value: math,
                      onChanged: (bool newValue) {
                        setState(() {
                          math = true;
                        });
                      },
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  alignment: Alignment.center,
                  child: Material(
                    color: Colors.white,
                    child: LabeledCheckbox(
                      icon: Icons.public,
                      label: 'Physics',
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      value: physics,
                      onChanged: (bool newValue) {
                        setState(() {
                          physics = true;
                        });
                      },
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  alignment: Alignment.center,
                  child: Material(
                    color: Colors.white,
                    child: LabeledCheckbox(
                      icon: Icons.science,
                      label: 'Chemistry',
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      value: chemistry,
                      onChanged: (bool newValue) {
                        setState(() {
                          chemistry = true;
                        });
                      },
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  alignment: Alignment.center,
                  child: Material(
                    color: Colors.white,
                    child: LabeledCheckbox(
                      icon: Icons.computer,
                      label: 'Computer Science',
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      value: computerScience,
                      onChanged: (bool newValue) {
                        setState(() {
                          computerScience = true;
                        });
                      },
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  alignment: Alignment.center,
                  child: Material(
                    color: Colors.white,
                    child: LabeledCheckbox(
                      icon: Icons.biotech,
                      label: 'Biology',
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      value: biology,
                      onChanged: (bool newValue) {
                        setState(() {
                          biology = true;
                        });
                      },
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  alignment: Alignment.center,
                  child: Material(
                    color: Colors.white,
                    child: LabeledCheckbox(
                      icon: Icons.euro,
                      label: 'Economics',
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      value: economics,
                      onChanged: (bool newValue) {
                        setState(() {
                          economics = true;
                        });
                      },
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  alignment: Alignment.center,
                  child: Material(
                    color: Colors.white,
                    child: LabeledCheckbox(
                      icon: Icons.gavel,
                      label: 'Law',
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      value: law,
                      onChanged: (bool newValue) {
                        setState(() {
                          law = true;
                        });
                      },
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  alignment: Alignment.center,
                  child: Material(
                    color: Colors.white,
                    child: LabeledCheckbox(
                      icon: Icons.theaters,
                      label: 'Art & Humanities',
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      value: artHumanities,
                      onChanged: (bool newValue) {
                        setState(() {
                          artHumanities = true;
                        });
                      },
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  alignment: Alignment.center,
                  child: Material(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)),
                    color: Colors.white,
                    child: LabeledCheckbox(
                      icon: Icons.medical_services,
                      label: 'Medicine',
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      value: medicine,
                      onChanged: (bool newValue) {
                        setState(() {
                          medicine = true;
                        });
                      },
                    ),
                  )),
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
                                        fixedSize: const Size(200, 60),
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
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SignUpPage()));
                                    }))),
                        Expanded(
                            child: Container(
                          alignment: Alignment.centerRight,
                          height: 80,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(200, 60),
                                  elevation: 10,
                                  shape:
                                      const StadiumBorder(), //Etsi kano to button rechtangle with circular
                                  backgroundColor:
                                      const Color.fromARGB(255, 89, 61, 167)),
                              child: const Text(
                                'Next',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignUpPagePrivacy()));
                              }),
                        ))
                      ]))
            ])));
  }
}
