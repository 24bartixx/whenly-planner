import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whenly_planner/common/widgets/custom_text_field.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/features/todo/presentation/widgets/add_task/add_task_bottom_sheet.dart';
import 'package:whenly_planner/theme/app_theme.dart';
import 'package:whenly_planner/utils/context_extensions.dart';

class SliverTasksMenuSection extends StatelessWidget {
  SliverTasksMenuSection({super.key});

  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _StickyHeaderDelegate(
        nonSafeTopHeight: MediaQuery.of(context).viewPadding.top,
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
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          useSafeArea: true,
                          useRootNavigator: false,
                          backgroundColor: context.colorTheme.surface,
                          builder: (_) {
                            return AddTaskBottomSheet();
                          },
                        );
                      },
                      icon: Icon(Icons.add, size: 26),
                    ),

                    Icon(Icons.format_list_numbered, size: 26),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
            CustomTextField(
              text: context.l10n.search_task,
              icon: Icons.search,
              controller: _searchController,
            ),
          ],
        ),
      ),
    );
  }
}

class _StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double nonSafeTopHeight;

  _StickyHeaderDelegate({required this.child, required this.nonSafeTopHeight});

  @override
  double get maxExtent => TasksConfig.listMenuHeight;
  @override
  double get minExtent => TasksConfig.listMenuHeight;

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
          top: max(nonSafeTopHeight, 4) + 4,
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
