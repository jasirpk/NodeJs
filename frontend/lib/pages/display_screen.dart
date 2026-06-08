import 'package:flutter/material.dart';
import 'package:frontend/pages/update_screen.dart';
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
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.teal[50], borderRadius: BorderRadius.circular(8)),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 26, vertical: 8),
                      leading: CircleAvatar(child: Icon(Icons.person)),
                      title: Text(Api.personData[index].pname ?? 'No Name'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [Text('Phone: ${Api.personData[index].pphone}'), Text('Age: ${Api.personData[index].page}')],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit, color: Colors.teal),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => UpdateScreen(personId: Api.personData[index].id?.toString() ?? '')),
                              ).then((_) {
                                setState(() {
                                  fetchPersons = Api.getPersons(); // Refresh data after returning from update screen
                                });
                              });
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete, color: Colors.teal),
                            onPressed: () {
                              Api.deletePerson(Api.personData[index].id.toString()).then((_) {
                                setState(() {
                                  fetchPersons = Api.getPersons(); 
                                });
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
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
