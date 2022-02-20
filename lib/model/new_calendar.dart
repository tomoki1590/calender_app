import 'package:calendar/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender1 extends ConsumerWidget {
  Calender1({Key? key}) : super(key: key);

  @override
  DateTime? _selectedDay;
//final event =LinkedHashMap(
  //equals: isSameDay(),
  //hashCode: getCode();

  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('カレンダー作り直し'),
      ),
      body: Center(
        child: Column(
          children: [
            TableCalendar(
              locale: 'ja_Jp',
              headerStyle: HeaderStyle(
                  headerMargin: EdgeInsets.only(bottom: 30),
                  titleCentered: true,
                  formatButtonVisible: true,
                  leftChevronVisible: true,
                  rightChevronVisible: false,
                  formatButtonDecoration: BoxDecoration(color: Colors.red)),
              calendarBuilders: CalendarBuilders(dowBuilder: (context, day) {
                if (day.weekday == DateTime.saturday) {
                  return Container(
                    decoration: const BoxDecoration(),
                    alignment: Alignment.center,
                    child: Text(
                      '土',
                      style: const TextStyle(color: Colors.blue),
                    ),
                  );
                }

                if (day.weekday == DateTime.sunday) {
                  return Container(
                    decoration: const BoxDecoration(),
                    alignment: Alignment.center,
                    child: Text(
                      '日',
                      style: const TextStyle(color: Colors.red),
                    ),
                  );
                }
              }),
              firstDay: DateTime.utc(2020, 12, 13),
              lastDay: DateTime.utc(2025, 1213),
              focusedDay: ref.watch(FoucusedProvider),
              selectedDayPredicate: (day) {
                return isSameDay(day, _selectedDay);
              },
            ),
          ],
        ),
      ),
    );
  }
}
