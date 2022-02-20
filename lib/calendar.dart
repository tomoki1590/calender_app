import 'package:calendar/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends ConsumerWidget {
  const Calendar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime? _selectedDay;

    return Scaffold(
      appBar: AppBar(
        title: Text('カレンダー'),
      ),
      body: Center(
        child: Column(
          children: [
            TableCalendar(
                focusedDay: ref.watch(FoucusedProvider),
                firstDay: DateTime.utc(2020, 12, 13),
                lastDay: DateTime.utc(2025, 1213),
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, foucused) {
                  print('oseba');
                  if (!isSameDay(_selectedDay, selectedDay)) {
                    _selectedDay = selectedDay;
                    print('ositana');
                  }
                }),
          ],
        ),
      ),
    );
  }
}
