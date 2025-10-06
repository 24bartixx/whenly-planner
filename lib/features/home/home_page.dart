import 'package:flutter/material.dart';
import 'package:whenly_planner/features/home/home_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String path = "/";

  @override
  Widget build(BuildContext context) {
    return HomeView();
  }
}
