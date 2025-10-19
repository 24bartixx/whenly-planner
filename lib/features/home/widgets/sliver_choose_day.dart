import 'package:flutter/material.dart';

class SliverChooseDay extends StatelessWidget {
  const SliverChooseDay({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(padding: EdgeInsets.all(16.0), sliver: SliverToBoxAdapter(
      child: Text("Choose Day Widget"),
    ));
  }
}