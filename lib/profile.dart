import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 8),
            CircleAvatar(
              radius: 75,
              foregroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1628563694622-5a76957fd09c?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5zdGFncmFtJTIwcHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
              ),
            ),

            const SizedBox(height: 8),

            Text(
              'S A Nahid',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'FLutter Begainer & Future App Developer',
              style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 12),
            ),
            const SizedBox(height: 4),
            Text(
              'I Love Building Mobile Apps, ',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
            ),
            const SizedBox(height: 4),
            Text(
              'Learning New THings everyDay and',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
            ),
            const SizedBox(height: 4),
            Text(
              'Enjoying the Journey ',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: w! * .80,
                child: ListTile(
                  title: Text('My Profile'),
                  subtitle: Text('Dhaka, Bangladesh'),
                  tileColor: Colors.blue.shade50,
                  leading: Container(
                    margin: EdgeInsets.all(4),
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade100,
                    ),

                    child: Icon(
                      Icons.location_pin,
                      size: 30,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: w! * .80,
                child: ListTile(
                  title: Text('Education'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('B.Sc in CSE'),
                      Text('XYZ University'),
                    ],
                  ),
                  tileColor: Colors.blue.shade50,
                  leading: Container(
                    margin: EdgeInsets.all(4),
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade100,
                    ),

                    child: Icon(
                      Icons.book_sharp,
                      size: 30,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: w! * .80,
                child: ListTile(
                  title: Text('Skills'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Flutter, Dart, HTML, CSS'),
                      Text('Firebase,Git, REST Api'),
                    ],
                  ),
                  tileColor: Colors.blue.shade50,
                  leading: Container(
                    margin: EdgeInsets.all(4),
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade100,
                    ),

                    child: Icon(
                      Icons.code,
                      size: 30,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),

            Text('Connect With Me'),
            SizedBox(
              width: w! * .60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.facebook),
                      ),
                      Text('Facebook'),
                    ],
                  ),Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.facebook),
                      ),
                      Text('LinkedIn'),
                    ],
                  ),Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.facebook),
                      ),
                      Text('Email'),
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
