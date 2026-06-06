import 'package:flutter/material.dart';
import 'package:frontend/services/api.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({super.key});

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  late Future<void> fetchPersons;
  @override
  initState() {
    super.initState();
    fetchPersons = Api.getPersons();
    debugPrint("Fetch Persons: ${Api.personData.length}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Display Screen')),
      body: FutureBuilder(
        future: fetchPersons,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text("Error fetching data"));
          } else if (Api.personData.isNotEmpty) {
            return ListView.builder(
              itemCount: Api.personData.length, // Replace with your actual data count
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(Api.personData[index].pname ?? 'No Name'), // Replace with your actual data
                  subtitle: Text('Phone: ${Api.personData[index].pphone ?? 'No Phone'}'), // Replace with your actual data
                );
              },
            );
          } else {
            return const Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}
