import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:whenly_planner/theme/app_theme.dart';

class SliverChooseDay extends StatelessWidget {
  const SliverChooseDay({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: TableCalendar(
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),
        calendarStyle: CalendarStyle(
          // defaultTextStyle: context.textTheme.bodyLargeDark,
          // weekendTextStyle: context.textTheme.bodyLargeDark,
        ),
      ),
    );
  }
}
