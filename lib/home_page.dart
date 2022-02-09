import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    CalendarFormat format = CalendarFormat.month;
    DateTime _focusedDay = DateTime.now();
    DateTime _selectedDay = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: const Text('カレンダー'),
      ),
      body: TableCalendar(
        headerStyle: HeaderStyle(
            leftChevronMargin: EdgeInsets.all(10),
            leftChevronVisible: true,
            rightChevronVisible: true,
            titleCentered: true,
            formatButtonDecoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(100))),
        firstDay: DateTime.utc(2000, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        calendarFormat: format,
        onFormatChanged: (CalendarFormat _format) {
          setState(() {
            format = _format;
          });
        },
        daysOfWeekVisible: true,
        focusedDay: _focusedDay,
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },
        locale: "ja-JP",
        daysOfWeekStyle: DaysOfWeekStyle(
          dowTextFormatter: (date, locale) =>
              DateFormat.E(locale).format(date)[0],
        ),
      ),
    );
  }
}
