import 'package:flutter/material.dart';
import 'lab.dart';
import 'dexter.dart';


void main() {
  runApp(MyApp());
//   FirebaseAnalytics analytics = FirebaseAnalytics.instance;
//  analytics.logEvent(
//    name: 'InitScreen',
//    parameters: <String, dynamic>{
//      'message': 'Integración de Firebase Completa',
//    },
//  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: "testing"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text("Pokédex"),
      ),
        body: _selectedIndex == 0 ? ProductsList() : MyCart(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Lab',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Dexter',
          ),// Add more BottomNavigationBarItem here
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
