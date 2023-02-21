//https://www.youtube.com/watch?v=jKlJ9MC4nS8 => flutter search bar tutorial
import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 100,
                    child: Row(
                      children: [
                        Container(
                            width: 100,
                            height: 100,
                            color: Colors.purple,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                "7.2!!!\n Average",
                                textAlign: TextAlign.center,
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                            )),
                        Expanded(child: Container()),
                        Container(
                            width: 150,
                            height: 100,
                            color: Colors.purple,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                "Congrats!!!\n You belong to the 15% of the university",
                                textAlign: TextAlign.center,
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15),
                              ),
                            )
                            // ignore: prefer_const_constructors

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
                      "Activity",
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
                      color: Color.fromARGB(255, 101, 98, 108),
                      borderRadius:
                          BorderRadius.circular(10), // Set the radius to 10
                    ),
                    width: 600,
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
                            "Athanasios Varis ranked at top 10\n Say congrats to him",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.black,
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
                      color: Color.fromARGB(255, 101, 98, 108),
                      borderRadius:
                          BorderRadius.circular(10), // Set the radius to 10
                    ),
                    width: 600,
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
                            "Athanasios Varis ranked at top 10\n Say congrats to him",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.black,
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
                      color: Color.fromARGB(255, 101, 98, 108),
                      borderRadius:
                          BorderRadius.circular(10), // Set the radius to 10
                    ),
                    width: 600,
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
                            "Athanasios Varis ranked at top 10\n Say congrats to him",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
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
                      "Recommended profiles",
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
                    width: 600,
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
                    width: 600,
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
                    width: 600,
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
