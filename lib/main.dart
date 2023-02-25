import 'package:flutter/material.dart';
import 'routes.dart' as routes;

void main() {
  runApp(const United());
}

class United extends StatelessWidget {
  const United({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'United',
      theme: ThemeData(
        navigationBarTheme: NavigationBarThemeData(
            labelTextStyle: MaterialStateProperty.all(
                const TextStyle(color: Colors.white))),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedLabelStyle: TextStyle(color: Colors.white),
            unselectedIconTheme: IconThemeData(color: Colors.white60),
            unselectedLabelStyle: TextStyle(color: Colors.white60),
            backgroundColor: Color.fromARGB(255, 73, 69, 79),
            elevation: 10),
      ),
      onGenerateRoute: routes.generateRoute,
      initialRoute: routes.registration,
      debugShowCheckedModeBanner: false,
    );
  }
}
