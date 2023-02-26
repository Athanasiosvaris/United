import 'package:flutter/material.dart';
import 'package:united/components/activity.dart';
import 'package:united/components/description.dart';
import 'package:united/components/profile_button.dart';

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
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              const Description(title: 'Academic Performance'),
              Container(
                padding: const EdgeInsets.all(10),
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    height: 200,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                '../../../assets/images/grades.png')),
                        shape: BoxShape.rectangle),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 110,
                child: Row(
                  children: [
                    Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 154, 130, 219),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                              topLeft: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0)),
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Column(
                          children: const [
                            Expanded(
                              child: Text(
                                "7.2",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Average",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        width: 200,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 154, 130, 219),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                              topLeft: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0)),
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: const Text(
                          "Congrats!! You belong to the top 5% of your university.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: const Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
              ),
              const Description(title: 'Activity'),
              const Activity(
                  icon: Icons.circle,
                  title: 'Athanasios Varis ranked at top 10%',
                  subtitle: 'Say congrats to him!'),
              const Activity(
                  icon: Icons.circle,
                  title: 'Giorgos managed to get a scholarship',
                  subtitle: 'Say congrats to him!'),
              const Activity(
                  icon: Icons.circle,
                  title: 'Dimitris got 20 points this week',
                  subtitle: 'Message him'),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: const Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
              ),
              const Description(title: 'Recommended Profiles'),
              const ProfileButton(initial: 'A', name: 'Athanasios Varis'),
              const ProfileButton(initial: 'G', name: 'Giogos Vlachopoulos'),
              const ProfileButton(name: 'Dimitris Vasios', initial: 'D')
            ]),
          ),
        ));
  }
}
