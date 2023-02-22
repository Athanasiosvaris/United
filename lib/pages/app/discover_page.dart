//https://www.youtube.com/watch?v=jKlJ9MC4nS8 => flutter search bar tutorial
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

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
          backgroundColor: const Color.fromARGB(255, 89, 61, 167),
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: CustomSearch());
                },
                icon: const Icon(Icons.search))
          ],
        ),
        body: SingleChildScrollView(
          //SingleChildScrollView == Widget to scroll down  as much as I need to view everything
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Column(children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 101, 98, 108),
                      borderRadius:
                          BorderRadius.circular(10), // Set the radius to 10
                    ),
                    width: 70,
                    height: 20,
                    child: Text(
                      "Following",
                      textAlign: TextAlign.center,
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 54, 52, 56),
                      borderRadius:
                          BorderRadius.circular(10), // Set the radius to 10
                    ),
                    width: 380,
                    height: 50,
                    child:
                        // ignore: prefer_const_literals_to_create_immutables
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 89, 61, 167),
                              ),
                              child: Center(
                                child: Text(
                                  'A',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 4),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Athanasios Varis",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 54, 52, 56),
                      borderRadius:
                          BorderRadius.circular(10), // Set the radius to 10
                    ),
                    width: 380,
                    height: 50,
                    child:
                        // ignore: prefer_const_literals_to_create_immutables
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 89, 61, 167),
                              ),
                              child: Center(
                                child: Text(
                                  'G',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 4),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Giorgos Vlachopoulos",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 54, 52, 56),
                      borderRadius:
                          BorderRadius.circular(10), // Set the radius to 10
                    ),
                    width: 380,
                    height: 50,
                    child:
                        // ignore: prefer_const_literals_to_create_immutables
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 89, 61, 167),
                              ),
                              child: Center(
                                child: Text(
                                  'D',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 4),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Dimitris Vasios",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 101, 98, 108),
                      borderRadius:
                          BorderRadius.circular(10), // Set the radius to 10
                    ),
                    width: 200,
                    height: 20,
                    child: Text(
                      "Busy areas - NTUA",
                      textAlign: TextAlign.center,
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 34, 33, 33),
                      borderRadius:
                          BorderRadius.circular(10), // Set the radius to 10
                    ),
                    width: 380,
                    height: 50,
                    child:
                        // ignore: prefer_const_literals_to_create_immutables
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                          Icon(Icons.local_library_rounded,
                              color: Colors.black),
                          SizedBox(width: 4),
                          Text(
                            "Athanasios Varis ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 34, 33, 33),
                      borderRadius:
                          BorderRadius.circular(10), // Set the radius to 10
                    ),
                    width: 380,
                    height: 50,
                    child:
                        // ignore: prefer_const_literals_to_create_immutables
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                          Icon(Icons.local_library_rounded,
                              color: Colors.black),
                          SizedBox(width: 4),
                          Text(
                            "Giorgos Vlachopoulos",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 34, 33, 33),
                      borderRadius:
                          BorderRadius.circular(10), // Set the radius to 10
                    ),
                    width: 380,
                    height: 50,
                    child:
                        // ignore: prefer_const_literals_to_create_immutables
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                          Icon(Icons.local_library_rounded,
                              color: Colors.black),
                          SizedBox(width: 4),
                          Text(
                            "Dimitrios Vasios",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}

class CustomSearch extends SearchDelegate {
  List<String> alldata = [
    'Athanasios Varis',
    'Giorgos Vlachopoulos',
    'Dimitris Vasios'
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in alldata) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in alldata) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
