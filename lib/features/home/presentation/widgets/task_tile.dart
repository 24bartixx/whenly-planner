import 'package:flutter/material.dart';
import 'package:whenly_planner/config/ui_config.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Building TaskTile");
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadiuses.large),
      ),
      child: ListTile(
        title: Row(
          children: [
            Checkbox(value: false, onChanged: (_) {}),
            Text("Title"),
            Spacer(),
            Text("Priority"),
          ],
        ),
      ),
    );
  }
}
