import 'package:flutter/material.dart';
import 'package:ui_design/gridview.dart' hide GridView;
import 'package:ui_design/profile.dart';

import 'constant.dart';

void main() {
  runApp(MyApp() );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Profile(),

    );
  }
}


