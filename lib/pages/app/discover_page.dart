import 'package:flutter/material.dart';
import 'package:united/components/description.dart';
import 'package:united/components/profile_button.dart';
import 'package:united/components/busy_areas.dart';

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
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            const Description(title: 'Following'),
            const ProfileButton(initial: 'A', name: 'Athanasios Varis'),
            const ProfileButton(initial: 'G', name: 'Giogos Vlachopoulos'),
            const ProfileButton(name: 'Dimitris Vasios', initial: 'D'),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: const Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
            const Description(title: 'Busy Areas'),
            BusyAreas(
                icon: Icons.book,
                place: 'Library',
                busy: 'Sightly Busy',
                color: Colors.orange.shade400),
            const BusyAreas(
                icon: Icons.coffee,
                place: 'Restaurant',
                busy: 'Very busy',
                color: Colors.red),
            const BusyAreas(
                icon: Icons.computer,
                place: 'ECE',
                busy: 'Not Busy',
                color: Colors.white),
            const BusyAreas(
                icon: Icons.sports_gymnastics,
                place: 'Gym Center',
                busy: 'Not Busy',
                color: Colors.white),
          ]),
        ),
      ),
    );
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
