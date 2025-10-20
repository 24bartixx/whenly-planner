import 'package:flutter/material.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/features/home/presentation/widgets/calendar.dart';
import 'package:whenly_planner/theme/app_theme.dart';
import 'package:whenly_planner/utils/context_extensions.dart';

class SliverHomeAppBar extends StatelessWidget {
  const SliverHomeAppBar({super.key});

  final double calendarHeight = 364;

  @override
  Widget build(BuildContext context) {
    final topHeight = MediaQuery.of(context).padding.top;

    return SliverAppBar(
      expandedHeight: (calendarHeight + topHeight + kToolbarHeight),
      backgroundColor: context.colorTheme.violetDark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(AppRadiuses.large),
        ),
      ),

      // scroll logic
      pinned: true,
      snap: true,
      floating: true,

      // elevation
      forceElevated: true,
      elevation: 1,
      scrolledUnderElevation: 10,
      shadowColor: context.colorTheme.darkSand,
      surfaceTintColor: Colors.transparent,

      // widgets
      title: Padding(
        padding: const EdgeInsets.only(bottom: AppPaddings.medium),
        child: Text(
          context.l10n.home_choose_day,
          style: context.textTheme.displaySmallLight,
        ),
      ),

      flexibleSpace: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(AppRadiuses.huge),
        ),
        child: FlexibleSpaceBar(
          background: Padding(
            padding: const EdgeInsets.only(
              top: 120,
              left: AppPaddings.large,
              right: AppPaddings.large,
            ),
            child: Calendar(),
          ),
        ),
      ),
    );
  }
}
