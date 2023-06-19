import 'package:flutter/foundation.dart';
import '../models/single_task.dart';

class TaskData extends ChangeNotifier{

  final List<SingleTask> _tasks = [
    SingleTask(title: "Buy milk", isChecked: false),
    SingleTask(title: "Buy coffe", isChecked: true),
  ];

  addItemToList(String text) {
    SingleTask item = SingleTask(title: text, isChecked: false);
    _tasks.add(item);
    notifyListeners();
  }

  removeItemFromList(int index){
    _tasks.removeAt(index);
    notifyListeners();
  }

  getListSize() => _tasks.length;

  getItem(int index) => _tasks[index];

}