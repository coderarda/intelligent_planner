import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'event_add_page.dart';

class TableCalendarView extends StatelessWidget {
  const TableCalendarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TableCalendar(
            focusedDay: DateTime.now(),
            firstDay: DateTime(2010),
            lastDay: DateTime(2050),
            onDayLongPressed: (selectedDay, focusedDay) => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EventAddPage(selectedDate: selectedDay),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
