import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
/* models */
import '../models/task_list.dart';

class PostScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    String _title = '';
    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
      ),
      body: Container(
        padding: EdgeInsets.all(64),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (String value) {
                _title = value;
              },
            ),
            ElevatedButton(
              onPressed: () => {
                  context.read(taskListProvider.notifier).addTask(_title),
                  Navigator.pop(context)
              },
              child: Text("add"),
            ),
          ],
        ),
      ),
    );
  }
}
