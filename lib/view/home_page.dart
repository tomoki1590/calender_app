import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

import 'add_screen.dart';
import 'editor_screen.dart';

class HomePage extends ConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CalendarFormat format = CalendarFormat.month;
    DateTime _focusedDay = DateTime.now();
    DateTime? _selectedDay;
    return Scaffold(
      appBar: AppBar(
          title: Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) =>
                  Text("カレンダー"))),
      body: Column(
        children: [
          TableCalendar(
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
            onFormatChanged: (CalendarFormat _format) {},
            daysOfWeekVisible: true,
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(_selectedDay, selectedDay)) {}
            },
            locale: "ja-JP",
            daysOfWeekStyle: DaysOfWeekStyle(
              weekendStyle: TextStyle(color: Colors.red),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddScreen()));
              },
              child: Icon(Icons.eighteen_mp)),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditorScreen()));
              },
              child: Text('編集画面'))
        ],
      ),
    );
  }
}
