import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
/* models */
import './task.dart';

//Providerの宣言
final StateNotifierProvider<TaskList, dynamic> taskListProvider =
    StateNotifierProvider((ref) => TaskList([]));

class TaskList extends StateNotifier<List<Task>> {
  TaskList(List<Task> initialTask) : super(initialTask ?? []);

  //新規タスクの追加
  void addTask(String title) {
    state = [...state, Task(title: title)];
  }

  //タスクの削除
  void deleteTask(Task target) {
    state = state.where((task) => task.id != target.id).toList();
  }
}