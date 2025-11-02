import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/theme/app_theme.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: CalendarConfig.total(),
      child: TableCalendar(
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),
        rowHeight: CalendarConfig.dayCellHeight,
        daysOfWeekHeight: CalendarConfig.daysOfWeekHeight,
        headerStyle: HeaderStyle(
          titleCentered: true,
          formatButtonVisible: false,
          headerPadding: EdgeInsets.zero,
          titleTextStyle: context.textTheme.headlineMediumLight,
          leftChevronIcon: Icon(
            Icons.chevron_left,
            color: context.colorTheme.onPrimary,
            size: 22,
          ),
          rightChevronIcon: Icon(
            Icons.chevron_right,
            color: context.colorTheme.onPrimary,
            size: 22,
          ),
        ),
        calendarStyle: CalendarStyle(
          tablePadding: const EdgeInsets.symmetric(
            vertical: CalendarConfig.verticalPadding,
          ),
          defaultTextStyle: context.textTheme.titleSmallLight,
          weekendTextStyle: context.textTheme.titleSmallLight,
          outsideTextStyle: context.textTheme.titleSmallLight.copyWith(
            fontWeight: FontWeight.normal,
          ),
          todayDecoration: BoxDecoration(
            color: context.colorTheme.secondaryContainer,
            shape: BoxShape.circle,
          ),
          todayTextStyle: context.textTheme.titleSmallLight,
        ),
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: context.textTheme.titleSmallLight,
          weekendStyle: context.textTheme.titleSmallLight,
        ),
      ),
    );
  }
}
