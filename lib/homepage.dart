import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final List<Map<String, dynamic>> card = [
    {
      'title': 'AI Driven SQA: Manual & Automation Testing',

      'logo':
          'https://cdn.ostad.app/course/photo/2024-12-18T15-24-44.114Z-Untitled-1%20(21).jpg',
      'batch': 6,
      'seat': 86,
      'days': 40,
    },
    {
      'title': 'Full Stack Web Development with Python, Django, React & ',

      'logo':
          'https://cdn.ostad.app/course/photo/2026-06-22T07-45-11.375Z-Full-Stack-Web-Development-with-Python,-Django-&-React.jpg',
      'batch': 11,
      'seat': 8,
      'days': 20,
    },
    {
      'title': 'AI Driven Full Stack Web Development with MERN',

      'logo':
          'https://cdn.ostad.app/course/photo/2025-12-08T14-25-01.527Z-Course-Thumbnail-12.jpg',
      'batch': 11,
      'seat': 8,
      'days': 20,
    },
    {
      'title': 'App Development with Flutter & AI',
      'logo':
          'https://cdn.ostad.app/course/photo/2025-12-08T14-27-28.969Z-Flutter-Thumbnail.jpg',
      'batch': 11,
      'seat': 8,
      'days': 20,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .90
                ),
                itemCount: card.length,
                shrinkWrap: true,

                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 250,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image.network(card[index]['logo']),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.withAlpha(50),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(5),
                              child: Text('ব্যাচ ${card[index]['batch']}'),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.withAlpha(50),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(5),
                              child: Text('${card[index]['seat']} সীট বাকি'),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.withAlpha(50),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(5),
                              child: Text('${card[index]['seat']} দিন বাকি'),
                            ),
                          ],
                        ),

                        SizedBox(height: 5),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            card[index]['title'],
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),

                        SizedBox(height: 5),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.grey.withAlpha(50),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'বিস্তারিত দেখি',
                                style: Theme.of(context).textTheme.titleMedium
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 5),
                              Icon(Icons.arrow_forward, size: 15),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
