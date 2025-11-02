import 'package:flutter/material.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/features/todo/presentation/widgets/calendar.dart';
import 'package:whenly_planner/theme/app_theme.dart';
import 'package:whenly_planner/utils/context_extensions.dart';

class SliverHomeAppBar extends StatelessWidget {
  const SliverHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final unsafeHeight = MediaQuery.of(context).viewPadding.top;

    return SliverAppBar(
      expandedHeight: (unsafeHeight + CalendarConfig.total() + kToolbarHeight),
      backgroundColor: context.colorTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(AppRadiuses.large),
        ),
      ),

      // elevation
      forceElevated: true,
      elevation: 1,
      scrolledUnderElevation: 10,
      shadowColor: context.colorTheme.onSurface,
      surfaceTintColor: Colors.transparent,

      // widget
      flexibleSpace: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(AppRadiuses.huge),
        ),
        child: FlexibleSpaceBar(
          background: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 12,
                left: AppPaddings.large,
                right: AppPaddings.large,
              ),
              child: Column(
                children: [
                  Text(
                    context.l10n.home_choose_day,
                    style: context.textTheme.displaySmallLight,
                  ),
                  Calendar(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
