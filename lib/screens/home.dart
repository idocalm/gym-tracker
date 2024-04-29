import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _selectedDay = DateTime.now();

  // The date of this week's start (Sunday)
  final DateTime startWeek = DateTime.now().subtract(
    Duration(days: DateTime.now().weekday),
  );

  // The date of this week's end (Saturday)
  final DateTime endWeek = DateTime.now().add(
    Duration(days: DateTime.daysPerWeek - (DateTime.now().weekday + 1)),
  );

  final days = ["", "ראשון", "שני", "שלישי", "רביעי", "חמישי", "שישי", "שבת"];

  // Should represent

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "ברוכים הבאים",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      letterSpacing: -0.9),
                ),
                const SizedBox(height: 20),
                Container(
                    width: 1000,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black45,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'אימונים השבוע', // Replace with your logic to count the workouts done today
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              letterSpacing: -0.9),
                        ),
                        TableCalendar(
                          firstDay: startWeek,
                          lastDay: endWeek,
                          focusedDay: _selectedDay,
                          calendarFormat: CalendarFormat.week,
                          headerStyle: const HeaderStyle(
                            formatButtonVisible: false,
                            titleCentered: true,
                          ),
                          daysOfWeekStyle: const DaysOfWeekStyle(
                            weekdayStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            weekendStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          calendarStyle: const CalendarStyle(
                            selectedDecoration: BoxDecoration(
                              color: Color.fromARGB(255, 243, 152, 33),
                              shape: BoxShape.circle,
                            ),
                            todayDecoration: BoxDecoration(
                              color: Color.fromARGB(255, 110, 109, 107),
                              shape: BoxShape.circle,
                            ),
                            selectedTextStyle: TextStyle(color: Colors.white),
                          ),
                          selectedDayPredicate: (day) {
                            return isSameDay(_selectedDay, day);
                          },
                          onDaySelected: (selectedDay, focusedDay) {
                            setState(() {
                              _selectedDay = selectedDay;
                            });
                          },
                        )
                      ],
                    )),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                      "יום ${days[_selectedDay.weekday]} - תאריך: ${_selectedDay.day}/${_selectedDay.month}/${_selectedDay.year}",
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          // align to right

                          letterSpacing: -0.9)),
                ),
                const SizedBox(height: 10),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "הערות כלליות",
                    hintTextDirection: TextDirection.rtl,
                    border: OutlineInputBorder(),
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ],
            )));
  }
}
