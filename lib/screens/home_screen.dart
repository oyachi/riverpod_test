import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
/* models */
import 'package:todo_test/models/task_list.dart';

class HomeScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final taskList = useProvider(taskListProvider);
    return Center(
      child: ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          final task = taskList[index];
          return ListTile(
            title: Text(task.title.toString()),
            onTap: () => {
              context.read(taskListProvider.notifier).deleteTask(task)
            },
            trailing: Icon(Icons.auto_delete),
          );
        },
      ),
    );
  }
}