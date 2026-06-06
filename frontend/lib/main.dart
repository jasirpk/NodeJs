import 'package:flutter/material.dart';
import 'package:frontend/pages/create_screen.dart';
import 'package:frontend/pages/display_screen.dart';
import 'package:frontend/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Full Stack',
      routes: {
        '/create': (context) => const CreateScreen(),
        '/display': (context)=> const DisplayScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
