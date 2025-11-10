import 'package:go_router/go_router.dart';
import 'package:whenly_planner/features/deadlines/presentation/deadlines_page.dart';
import 'package:whenly_planner/features/navigation/widgets/bottom_nav_scaffold.dart';
import 'package:whenly_planner/features/work_sessions/presentation/browse/browse_work_sessions_page.dart';
// import 'package:whenly_planner/features/navigation/widgets/bottom_nav_scaffold.dart';

final _router = GoRouter(
  initialLocation: DeadlinesPage.path,
  routes: [
    // GoRoute(
    //   path: DeadlinesPage.path,
    //   builder: (context, state) => DeadlinesPage(),
    // ),
    StatefulShellRoute.indexedStack(
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: DeadlinesPage.path,
              builder: (context, state) => DeadlinesPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: BrowseWorkSessionsPage.path,
              builder: (context, state) => BrowseWorkSessionsPage(),
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
