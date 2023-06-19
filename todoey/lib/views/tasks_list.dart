import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/task_data.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
            itemCount: taskData.getListSize(),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onLongPress: () => taskData.removeItemFromList(index),
                child: ListTile(
                    title: taskData.getItem(index).getChecked()
                        ? Text(taskData.getItem(index).getTitle(),
                        style: const TextStyle(
                            decoration: TextDecoration.lineThrough))
                        : Text(taskData.getItem(index).getTitle()),
                    trailing: Checkbox(
                        value: taskData.getItem(index).getChecked(),
                        onChanged: (bool? value) {
                          setState(() {
                            taskData.getItem(index).setChecked(value!);
                          });
                        })),
              );
            });
      },
    );
  }
}
