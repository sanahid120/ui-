import 'package:flutter/material.dart';

class AddTaskList extends StatelessWidget {
  const AddTaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: .start,
          children: [
            Card(
              child: ListTile(
                leading: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.withAlpha(50),
                  ),
                  child: Icon(Icons.shopping_bag, color: Colors.red),
                ),

                title: Text(
                  'Task Group',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                subtitle: Text(
                  'Work',
                  style: TextStyle(color: Colors.black, fontWeight: .bold),
                ),
              ),
            ),

            const SizedBox(height: 20),
            TextField(
              controller: TextEditingController(
                text:
                    "This application is designed for super shops. By Using...",
              ),
              decoration: InputDecoration(
                label: Text('Description'),
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
