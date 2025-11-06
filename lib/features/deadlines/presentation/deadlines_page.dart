import 'package:flutter/material.dart';
import 'package:whenly_planner/features/deadlines/presentation/deadlines_view.dart';

class DeadlinesPage extends StatelessWidget {
  const DeadlinesPage({super.key});

  static const String path = "/";

  @override
  Widget build(BuildContext context) {
    return DeadlinesView();
  }
}
