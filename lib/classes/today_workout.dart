import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training_app/classes/color_manager.dart';

import '../screens/workout_start.dart';

class TodayWorkout extends StatefulWidget {
  const TodayWorkout({super.key});

  @override
  _TodayWorkoutState createState() => _TodayWorkoutState();
}

class _TodayWorkoutState extends State<TodayWorkout> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 200,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Today's workout plan",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: GoogleFonts.dmSans().fontFamily,
                        fontWeight: FontWeight.normal,
                        letterSpacing: -0.5)),
                Text("Mon 28 Dec",
                    style: TextStyle(
                        fontSize: 15,
                        color: ColorManager.primaryGreen,
                        fontFamily: GoogleFonts.dmSans().fontFamily,
                        fontWeight: FontWeight.normal,
                        letterSpacing: -0.5)),
              ],
            ),
            const SizedBox(height: 20),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => WorkoutStart()));
                },
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("A Program",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontFamily: GoogleFonts.dmSans().fontFamily,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -0.5)),
                        Text("Chests, Hands & Legs",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontFamily: GoogleFonts.dmSans().fontFamily,
                                fontWeight: FontWeight.normal,
                                letterSpacing: -0.5)),
                      ],
                    ),
                  ),
                ))
          ],
        ));
  }
}
