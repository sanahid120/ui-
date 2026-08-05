import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              controller: TextEditingController(text: 'Hasan'),

              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: TextEditingController(text: '01745-777777'),

              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),

            SizedBox(height: 10),
            SizedBox(
              width: double.maxFinite,
              child: FilledButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
                ),
                child: Text('Add'),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (context, index) => SizedBox(),
                itemBuilder: (context, index) => ListTile(
                  leading: Icon(Icons.person, size: 50),

                  title: Text('Hasan',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent.shade400
                  ),),
                  subtitle: Text('01745-777777',style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),),

                  trailing: IconButton(onPressed: () {}, icon: Icon(Icons.call,color: Colors.blue,)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
