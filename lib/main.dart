import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training_app/screens/home.dart';
import 'package:radix_icons/radix_icons.dart';

void main() {
  runApp(const TrainingApp());
}

class TrainingApp extends StatelessWidget {
  const TrainingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans().fontFamily,
        colorScheme: ColorScheme.fromSeed(
            background: const Color.fromRGBO(17, 17, 18, 1),
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: Color.fromRGBO(28, 28, 30, 1),
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
            label: "",
            icon: Icon(RadixIcons.Home, size: 20.0),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(RadixIcons.Activity_Log, size: 20.0),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(RadixIcons.Bell, size: 20.0),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(RadixIcons.Person, size: 20.0),
          ),
        ],
      ),
      body: screens[_currentIndex],
    );
  }
}
