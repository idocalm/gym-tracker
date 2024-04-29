import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training_app/screens/home.dart';

void main() {
  runApp(const TrainingApp());
}

class TrainingApp extends StatelessWidget {
  const TrainingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans().fontFamily,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 129, 97, 37)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> screens = [
    HomePage(),
    const Text("Music"),
    const Text("History"),
    const Text("Settings"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Training App"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(35, 31, 32, 1),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.80),
        selectedFontSize: 14,
        currentIndex: _currentIndex,
        unselectedFontSize: 14,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Stats",
            icon: Icon(Icons.important_devices),
          ),
          BottomNavigationBarItem(
            label: "History",
            icon: Icon(Icons.history),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: screens[_currentIndex],
    );
  }
}
