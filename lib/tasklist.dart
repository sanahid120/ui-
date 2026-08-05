import 'package:flutter/material.dart';

import 'add_task_list.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Map> tasks = [
    {"title": "Market Research", "time": "10:00 AM", "status": "Done"},
    {"title": "Competitive Analysis", "time": "12:00 PM", "status": "In-Progress"},
    {"title": "Create Low- fidelity Wireframe", "time": "07:00 PM", "status": "To-Do"},
    {"title": "How to pitch a design Sprint", "time": "09:00 AM", "status": "To-Do"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task List'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTaskList()),
          );
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'To-Do List',
              style: TextTheme.of(
                context,
              ).titleLarge?.copyWith(fontWeight: FontWeight.bold, fontSize: 24),
            ),

            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(),
                itemCount: tasks.length,
                itemBuilder: (context, index) => Card(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'ID: $index',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey.withAlpha(50),
                                ),
                                child: Icon(
                                  Icons.shopping_bag,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),

                          Text(
                            tasks[index]['title'],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 10),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time_filled,
                                    color: Colors.purple,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    tasks[index]['time'],
                                    style: TextStyle(color: Colors.purple),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    index != 0 ? "" : "(10 minutes ago)",
                                    style: TextStyle(color: Colors.purple),
                                  ),
                                ],
                              ),

                              Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey.withAlpha(50),
                                ),
                                child: Text(
                                  tasks[index]['status'],
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
