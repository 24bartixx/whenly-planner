import 'package:go_router/go_router.dart';
import 'package:whenly_planner/features/todo/presentation/todo_page.dart';
// import 'package:whenly_planner/features/navigation/widgets/bottom_nav_scaffold.dart';

final _router = GoRouter(
  initialLocation: TodoPage.path,
  routes: [
    GoRoute(path: TodoPage.path, builder: (context, state) => TodoPage()),
    // StatefulShellRoute.indexedStack(
    //   branches: [
    //     StatefulShellBranch(
    //       routes: [
    //         GoRoute(
    //           path: TodoPage.path,
    //           builder: (context, state) => TodoPage(),
    //         ),
    //       ],
    //     ),
    //   ],
    //   builder: (_, _, navigationShell) =>
    //       BottomNavScaffold(navigationShell: navigationShell),
    // ),
  ],
);

GoRouter get router => _router;
