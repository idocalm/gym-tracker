import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training_app/classes/today_workout.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello Ido",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: GoogleFonts.dmSans().fontFamily,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.5)),
                Text("Good morning",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.white60,
                        fontFamily: GoogleFonts.dmSans().fontFamily,
                        letterSpacing: -0.5)),
                const SizedBox(height: 50),
                TodayWorkout()
              ],
            )));
  }
}
