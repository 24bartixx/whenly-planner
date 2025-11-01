import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/features/todo/presentation/widgets/sliver_home_app_bar.dart';
import 'package:whenly_planner/features/todo/presentation/widgets/sliver_tasks_section.dart';
import 'package:whenly_planner/theme/app_theme.dart';
import 'package:whenly_planner/utils/context_extensions.dart';

class TodoView extends StatelessWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();

    return Scaffold(
      backgroundColor: context.colorTheme.surface,
      body: CustomScrollView(
        slivers: [
          SliverHomeAppBar(),
          SliverPersistentHeader(
            pinned: true,
            delegate: _StickyHeaderDelegate(
              safeAreaTop: MediaQuery.of(context).padding.top,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        context.l10n.home_tasks_for_day,
                        style: context.textTheme.headlineMediumDark,
                      ),
                      Row(
                        spacing: 12,
                        children: [
                          Icon(Icons.add, size: 26),
                          Icon(Icons.format_list_numbered, size: 26),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      hintText: context.l10n.search_task,
                      filled: true,
                      fillColor: context.colorTheme.surfaceContainerLowest,
                      prefixIcon: Icon(
                        Icons.search,
                        color: context.colorTheme.onSurface,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppRadiuses.large),
                      ),
                    ),
                    onTap: () {
                      FocusScope.of(context).requestFocus(focusNode);
                    },
                  ),
                ],
              ),
            ),
          ),

          SliverTasksSection(),
        ],
      ),
    );
  }
}

class _StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double safeAreaTop;

  _StickyHeaderDelegate({required this.child, required this.safeAreaTop});

  @override
  double get maxExtent => 190.0;
  @override
  double get minExtent => 190.0;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(
          top: max(safeAreaTop, 4) + 4,
          bottom: AppPaddings.large,
          left: AppPaddings.large,
          right: AppPaddings.large,
        ),
        child: child,
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
