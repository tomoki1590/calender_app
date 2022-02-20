import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class a extends StatefulWidget {
  const a({Key? key}) : super(key: key);

  @override
  _aState createState() => _aState();
}

DateTime _focusedDay = DateTime.now();
DateTime? _selectedDay; //追記
CalendarFormat _calendarFormat = CalendarFormat.month;

class _aState extends State<a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: TableCalendar(
        firstDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        focusedDay: _focusedDay,
        calendarFormat: _calendarFormat,
        selectedDayPredicate: (day) {
          //以下追記部分
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          if (!isSameDay(_selectedDay, selectedDay)) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          }
        },
      ),
    );
  }
}
