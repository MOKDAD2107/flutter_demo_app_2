import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/mydrawer.widget.dart';

class ContactsPage extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {
      'name': 'Mohamed MOKDAD',
      'email': 'mo@gmail.com',
      'phone': '+212 611223348'
    },
    {
      'name': 'Ahmed YASSINE',
      'email': 'ahmed@gmail.com',
      'phone': '+212 6222335579'
    },
    {
      'name': 'Redouan RAISS',
      'email': 'raiss@gmail.com',
      'phone': '+213 624680290'
    },
    {
      'name': 'Juan MARTINEZ',
      'email': 'juan@gmail.com',
      'phone': '+54 634719930'
    },
    {
      'name': 'Ismail HAIT',
      'email': 'hait@gmail.com',
      'phone': '+212 624268880'
    },
    {
      'name': 'Ayman CHOUKRI',
      'email': 'aymen@gmail.com',
      'phone': '+34 660113890'
    },
    {
      'name': 'Yassine WADIH',
      'email': 'yassine@gmail.com',
      'phone': '+33 644125820'
    },
    {
      'name': 'Nabil EL RAMI',
      'email': 'nabil@gmail.com',
      'phone': '+34 634115390'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: const Text("Contacts")),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          final initials = contact['name']!.split(' ').map((e) => e[0]).join();

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepOrange,
                child: Text(
                  initials,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(contact['name']!),
              subtitle: Text("${contact['email']}\n${contact['phone']}"),
              isThreeLine: true,
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
              },
            ),
          );
        },
      ),
    );
  }
}
