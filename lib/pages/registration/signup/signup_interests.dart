import 'package:flutter/material.dart';
import 'package:united/components/labeled_checkbox.dart';
import 'package:united/routes.dart';

class SignUpPageInterests extends StatefulWidget {
  const SignUpPageInterests({Key? key}) : super(key: key);

  @override
  State<SignUpPageInterests> createState() => _SignUpPageInterests();
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
                padding: const EdgeInsets.all(20),
                child: Material(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  elevation: 10,
                  child: Column(
                    children: [
                      LabeledCheckbox(
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
                      LabeledCheckbox(
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
                      LabeledCheckbox(
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
                      LabeledCheckbox(
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
                      LabeledCheckbox(
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
                      LabeledCheckbox(
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
                      LabeledCheckbox(
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
                      LabeledCheckbox(
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
                      LabeledCheckbox(
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
                                      Navigator.pop(context);
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
                                Navigator.pushNamed(context, signupPrivacy);
                              }),
                        ))
                      ]))
            ])));
  }
}
