import 'package:flutter/material.dart';
import 'package:frontend/services/api.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back), color: Colors.white, onPressed: () => Navigator.pop(context)),
        title: const Text("Create Item", style: TextStyle(color: Colors.white)),
        elevation: 10,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.black87,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .start,
          spacing: 25,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: "Enter Name"),
            ),
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(labelText: "Enter Phone Number"),
            ),
            TextField(
              controller: ageController,
              decoration: const InputDecoration(labelText: "Enter Your Age"),
            ),
            ElevatedButton(
              onPressed: () {
                var data = {'name': nameController.text, 'phone': phoneController.text, 'age': ageController.text};

                Api.addPerson(data);
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                minimumSize: const Size(120, 40),
              ),
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
