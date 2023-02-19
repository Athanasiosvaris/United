import 'package:flutter/material.dart';
import 'package:united/signup_interests.dart';
import 'package:united/main.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignUpPage createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  int? sexChoice = 0;
  List<String> sex = ["Male", "Female"];
  var university;
  List<String> universities = <String>[
    'National Technical University of Athens',
    'Athens University of Economics',
    'University of Pireus',
    'University of Athens'
  ];
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final linkedinController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final uniController = TextEditingController();

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
                  // padding: const EdgeInsets.all(5),
                  child: const Text(
                    'But First...',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  )),
              Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: const Text(
                    'Tell Us Something About Yourself',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  )),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
                alignment: Alignment.center,
                child: Wrap(
                  spacing: 5.0,
                  children: List<Widget>.generate(
                    2,
                    (int index) {
                      return ChoiceChip(
                        label: Text(
                            style: const TextStyle(fontSize: 20), sex[index]),
                        selected: sexChoice == index,
                        elevation: 10,
                        selectedColor: const Color.fromARGB(255, 227, 199, 240),
                        backgroundColor: Colors.white,
                        onSelected: (bool selected) {
                          setState(() {
                            sexChoice = selected ? index : null;
                          });
                        },
                      );
                    },
                  ).toList(),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  elevation: 10,
                  child: TextField(
                    controller: nameController,
                    showCursor: true,
                    cursorColor: Colors.black,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter you full name',
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                          borderRadius: BorderRadius.circular(20.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      hintStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.black38),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  elevation: 10,
                  child: TextField(
                    controller: usernameController,
                    showCursor: true,
                    cursorColor: Colors.black,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                          borderRadius: BorderRadius.circular(20.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      hintStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.black38),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  elevation: 10,
                  child: TextField(
                    controller: emailController,
                    showCursor: true,
                    cursorColor: Colors.black,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                          borderRadius: BorderRadius.circular(20.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      hintStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.black38),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  elevation: 10,
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    obscuringCharacter: '*',
                    showCursor: true,
                    cursorColor: Colors.black,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                          borderRadius: BorderRadius.circular(20.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      hintStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.black38),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Material(
                  color: Colors.white,
                  elevation: 10,
                  borderRadius: BorderRadius.circular(20.0),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: university,
                    underline: const SizedBox(), // to remove underline
                    hint: const Text(
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black38,
                      ),
                      'Choose your university',
                    ),
                    elevation: 10,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                    borderRadius: BorderRadius.circular(20.0),
                    onChanged: (value) {
                      setState(() {
                        university = value!;
                      });
                    },
                    items: universities
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
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
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const United()));
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
                                            const SignUpPageInterests()));
                              }),
                        ))
                      ]))
            ])));
  }
}
