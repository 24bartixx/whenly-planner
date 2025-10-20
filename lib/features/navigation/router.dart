import 'package:go_router/go_router.dart';
import 'package:whenly_planner/features/home/presentation/home_page.dart';
import 'package:whenly_planner/features/navigation/widgets/bottom_nav_scaffold.dart';
import 'package:whenly_planner/features/todo/todo_page.dart';

final _router = GoRouter(
  initialLocation: HomePage.path,
  routes: [
    StatefulShellRoute.indexedStack(
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: HomePage.path,
              builder: (context, state) => HomePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: TodoPage.path,
              builder: (context, state) => TodoPage(),
            ),
          ],
        ),
      ],
      builder: (_, _, navigationShell) =>
          BottomNavScaffold(navigationShell: navigationShell),
    ),
  ],
);

GoRouter get router => _router;
