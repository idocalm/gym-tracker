import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radix_icons/radix_icons.dart';
import 'package:training_app/classes/color_manager.dart';
import 'package:training_app/classes/exercise.dart';
import 'package:training_app/classes/today_workout.dart';

class WorkoutStart extends StatefulWidget {
  @override
  _WorkoutStartState createState() => _WorkoutStartState();
}

class _WorkoutStartState extends State<WorkoutStart> {
  final List<Exercise> exercises = [
    Exercise(reps: 10, sets: 3, name: "Pull-ups", isExpanded: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  RadixIcons.Exit,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35)),
                  color: Color.fromRGBO(28, 28, 30, 1),
                ),
                height: 620,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 25, 30, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("A Workout",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontFamily: GoogleFonts.dmSans().fontFamily,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.5)),
                      Text("Chest, Front & Back Hand, Shoulder",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorManager.primaryGreen,
                              fontFamily: GoogleFonts.dmSans().fontFamily,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.5)),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(44, 44, 46, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.timer,
                                      color: ColorManager.primaryGreen),
                                  const SizedBox(width: 5),
                                  Text("60 min",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontFamily:
                                              GoogleFonts.dmSans().fontFamily,
                                          fontWeight: FontWeight.normal,
                                          letterSpacing: -0.5)),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Container(
                            width: 130,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(44, 44, 46, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.assist_walker,
                                      color: ColorManager.primaryGreen),
                                  const SizedBox(width: 5),
                                  Text("15 exercises",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontFamily:
                                              GoogleFonts.dmSans().fontFamily,
                                          fontWeight: FontWeight.normal,
                                          letterSpacing: -0.5)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text("Exercises",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: GoogleFonts.dmSans().fontFamily,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.5)),
                      Expanded(
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: exercises.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child: ExpansionPanelList(
                                      expansionCallback:
                                          (int index, bool isExpanded) {
                                        setState(() {
                                          exercises[index].isExpanded =
                                              !exercises[index].isExpanded;
                                        });
                                      },
                                      elevation: 12.0,
                                      children: [
                                        ExpansionPanel(
                                          backgroundColor:
                                              Color.fromRGBO(44, 44, 46, 1),
                                          headerBuilder: (BuildContext context,
                                              bool isExpanded) {
                                            return Container(
                                              width: double.infinity,
                                              height: 80,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    44, 44, 46, 1),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 0, 20, 0),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                          exercises[index].name,
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              color:
                                                                  Colors.white,
                                                              fontFamily: GoogleFonts
                                                                      .dmSans()
                                                                  .fontFamily,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              letterSpacing:
                                                                  -0.5)),
                                                      const SizedBox(height: 5),
                                                      Text(
                                                          "${exercises[index].reps} reps, ${exercises[index].sets} sets",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: ColorManager
                                                                  .primaryGreen,
                                                              fontFamily: GoogleFonts
                                                                      .dmSans()
                                                                  .fontFamily,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              letterSpacing:
                                                                  -0.5)),
                                                    ]),
                                              ),
                                            );
                                          },
                                          body: Container(
                                              width: double.infinity,
                                              height: 110,
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          20, 0, 20, 0),
                                                  child: Expanded(
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        itemCount:
                                                            exercises[index]
                                                                .sets,
                                                        itemBuilder:
                                                            (BuildContext
                                                                    context,
                                                                int index) {
                                                          return Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .fromLTRB(
                                                                    0,
                                                                    10,
                                                                    0,
                                                                    0),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                    "Set #${index + 1}",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            18,
                                                                        color: Colors
                                                                            .white,
                                                                        fontFamily:
                                                                            GoogleFonts.dmSans()
                                                                                .fontFamily,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        letterSpacing:
                                                                            -0.5)),
                                                                Row(
                                                                  children: [
                                                                    IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Icon(
                                                                          RadixIcons
                                                                              .Minus,
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                    const SizedBox(
                                                                        width:
                                                                            5),
                                                                    Text(
                                                                        "10 reps",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                15,
                                                                            color:
                                                                                Colors.white,
                                                                            fontFamily: GoogleFonts.dmSans().fontFamily,
                                                                            fontWeight: FontWeight.normal,
                                                                            letterSpacing: -0.5)),
                                                                    const SizedBox(
                                                                        width:
                                                                            5),
                                                                    IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Icon(
                                                                          RadixIcons
                                                                              .Plus,
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                          );
                                                        }),
                                                  ))),
                                          isExpanded:
                                              exercises[index].isExpanded,
                                        )
                                      ],
                                    ));
                              }))
                    ],
                  ),
                ),
              ),
            ],
          )),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: 250,
          height: 50,
          child: FloatingActionButton(
            backgroundColor: ColorManager.primaryGreen,
            elevation: 8.0,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            onPressed: () {
              // Add your onPressed code here!
            },
            child: Text("Log workout",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black87,
                    fontFamily: GoogleFonts.dmSans().fontFamily,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.5)), // Change this to your desired icon
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
