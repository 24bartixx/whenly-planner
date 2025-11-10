import 'package:flutter/widgets.dart';
import 'package:whenly_planner/features/work_sessions/presentation/browse/browse_work_sessions_view.dart';

class BrowseWorkSessionsPage extends StatelessWidget {
  const BrowseWorkSessionsPage({super.key});

  static const String path = "/work-sessions";

  @override
  Widget build(BuildContext context) {
    return BrowseWorkSessionsView();
  }
}
