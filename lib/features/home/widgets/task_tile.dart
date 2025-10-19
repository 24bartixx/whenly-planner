import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Building TaskTile");
    return Card(
      elevation: 4,
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
