import 'package:flutter/material.dart';
import 'package:whenly_planner/config/ui_config.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadiuses.large),
      ),
      child: ListTile(
        title: Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (_) {
                debugPrint("changed");
              },
            ),
            Text("Title"),
            Spacer(),
            Text("Priority"),
          ],
        ),
      ),
    );
  }
}
