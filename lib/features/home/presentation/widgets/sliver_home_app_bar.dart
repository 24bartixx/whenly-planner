import 'package:flutter/material.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/features/home/presentation/widgets/calendar.dart';
import 'package:whenly_planner/theme/app_theme.dart';
import 'package:whenly_planner/utils/context_extensions.dart';

class SliverHomeAppBar extends StatelessWidget {
  const SliverHomeAppBar({super.key});

  final double requiredHeight = 350;

  @override
  Widget build(BuildContext context) {
    final topHeight = MediaQuery.of(context).padding.top;

    return SliverAppBar(
      expandedHeight: (requiredHeight + topHeight + kToolbarHeight),
      backgroundColor: context.colorTheme.violetDark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(AppRadiuses.large),
        ),
      ),

      // elevation
      forceElevated: true,
      elevation: 1,
      scrolledUnderElevation: 10,
      shadowColor: context.colorTheme.darkSand,
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
