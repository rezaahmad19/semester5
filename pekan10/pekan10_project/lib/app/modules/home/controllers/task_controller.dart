import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

// 1. IMPORT MODEL (Wajib ada biar gak merah)
import '../../../data/models/task_model.dart';

class TaskController extends GetxController {
  RxList<TaskModel> tasks = <TaskModel>[].obs;

  // 2. GETTER (Untuk Header HomeView)
  int get totalTasks => tasks.length;
  int get completedTasks => tasks.where((task) => task.isCompleted).length;

  // 3. FUNGSI ADD (Menerima TaskModel biar tombol Save jalan)
  void addTask(TaskModel task) {
    tasks.add(task);
    tasks.refresh();
  }

  // 4. FUNGSI DELETE
  void deleteTask(String id) {
    tasks.removeWhere((task) => task.id == id);
    tasks.refresh();
  }

  // 5. FUNGSI TOGGLE (Nama disesuaikan dengan HomeView kamu: toggleTaskStatus)
  void toggleTaskStatus(String id) {
    final index = tasks.indexWhere((task) => task.id == id);
    if (index != -1) {
      tasks[index] = tasks[index].copyWith(
        isCompleted: !tasks[index].isCompleted,
      );
      tasks.refresh();
    }
  }
}