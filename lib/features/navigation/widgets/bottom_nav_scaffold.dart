import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whenly_planner/theme/app_theme.dart';
import 'package:whenly_planner/utils/context_extensions.dart';

class BottomNavScaffold extends StatelessWidget {
  const BottomNavScaffold({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: context.colorTheme.surfaceContainerLowest,
          indicatorColor: context.colorTheme.secondaryContainer.withValues(
            alpha: 0.15,
          ),
          iconTheme: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return IconThemeData(color: context.colorTheme.secondary);
            }
            return const IconThemeData();
          }),
          labelTextStyle: WidgetStateProperty.resolveWith((states) {
            final isSelected = states.contains(WidgetState.selected);
            return context.textTheme.bodyMediumDark.copyWith(
              color: isSelected ? context.colorTheme.secondary : null,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
            );
          }),
        ),
        child: NavigationBar(
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: _navigateBranch,
          destinations: [
            NavigationDestination(
              label: context.l10n.nav_deadline,
              icon: Icon(Icons.home_outlined),
            ),
            NavigationDestination(
              label: context.l10n.nav_work_sessions,
              icon: Icon(Icons.schedule_outlined),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateBranch(int index) {
    navigationShell.goBranch(index);
  }
}
