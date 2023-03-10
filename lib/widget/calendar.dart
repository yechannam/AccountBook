import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MyCalendar extends StatefulWidget {
  const MyCalendar({super.key});
  @override
  State<MyCalendar> createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  var focusDay = DateTime.now();
  var selectDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      selectedDayPredicate: (day) {
        return isSameDay(selectDay, day);
      },
      onPageChanged: (focusedDay) {
        focusDay = focusedDay;
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          selectDay = selectedDay;
          focusDay = focusedDay; // update `_focusedDay` here as well
        });
      },
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: focusDay,
      calendarFormat: _calendarFormat,
    );
  }
}
