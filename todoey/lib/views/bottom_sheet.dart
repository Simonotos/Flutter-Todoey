import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/task_data.dart';

class BottomMenu extends StatelessWidget {
  final userText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Add Task',
              style: TextStyle(fontSize: 25, color: Colors.blueAccent),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(textAlign: TextAlign.center, controller: userText),
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: TextButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false).addItemToList(userText.text);
                  userText.clear();
                  Navigator.pop(context);
                },
                style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.blueAccent)),
                child: const Text('Add', style: TextStyle(color: Colors.white)),
              )
            )],
        ));
  }
}
