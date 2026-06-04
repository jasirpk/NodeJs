import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.7,
          width: MediaQuery.sizeOf(context).width * 0.6,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 5))],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 25,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                 Navigator.pushNamed(context, '/create');
                },
                style: buttonStyle(),
                label: const Text("Create"),
                icon: const Icon(Icons.create),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle button press
                },
                style: buttonStyle(),

                label: const Text("Read"),
                icon: const Icon(Icons.visibility),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle button press
                },
                label: const Text("Update"),
                icon: const Icon(Icons.edit),
                style: buttonStyle(),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle button press
                },
                label: const Text("Delete"),
                icon: const Icon(Icons.delete),
                style: buttonStyle(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ButtonStyle buttonStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: Colors.teal,
      foregroundColor: Colors.white,
      minimumSize: const Size(180, 50),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
