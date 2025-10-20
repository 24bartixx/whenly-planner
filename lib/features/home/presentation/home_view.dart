import 'package:flutter/material.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/features/home/presentation/widgets/sliver_home_app_bar.dart';
import 'package:whenly_planner/features/home/presentation/widgets/sliver_tasks_section.dart';
import 'package:whenly_planner/theme/app_theme.dart';
import 'package:whenly_planner/theme/custom_colors.dart';
import 'package:whenly_planner/utils/context_extensions.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();

    return Scaffold(
      backgroundColor: CustomColors.lightBg,
      body: CustomScrollView(
        slivers: [
          SliverHomeAppBar(),
          SliverPadding(
            padding: EdgeInsets.only(
              top: AppPaddings.huge,
              bottom: AppPaddings.large,
              left: AppPaddings.large,
              right: AppPaddings.large,
            ),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        context.l10n.home_tasks_for_day,
                        style: context.textTheme.headlineLargeDark,
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          Icon(Icons.add, size: 30),
                          Icon(Icons.format_list_numbered, size: 30),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Search task",
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.search,
                        color: context.colorTheme.darkSand,
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
