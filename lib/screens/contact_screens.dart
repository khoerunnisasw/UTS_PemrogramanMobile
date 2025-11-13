import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Data kontak statis
    final List<Map<String, String>> contacts = [
      {'name': 'Alya Rahma', 'phone': '0812-3456-7890', 'image': 'assets/contacts/woman.png'},
      {'name': 'Bagas Pratama', 'phone': '0813-1122-3344', 'image': 'assets/contacts/man.png'},
      {'name': 'Citra Dewi', 'phone': '0812-9988-7766', 'image': 'assets/contacts/woman.png'},
      {'name': 'Dimas Saputra', 'phone': '0815-6677-8899', 'image': 'assets/contacts/man.png'},
      {'name': 'Eka Putri', 'phone': '0812-2233-4455', 'image': 'assets/contacts/man.png'},
      {'name': 'Fajar Nugroho', 'phone': '0813-5566-7788', 'image': 'assets/contacts/man.png'},
      {'name': 'Gita Lestari', 'phone': '0814-9900-1122', 'image': 'assets/contacts/woman.png'},
      {'name': 'Hadi Prakoso', 'phone': '0812-7788-9900', 'image': 'assets/contacts/man.png'},
      {'name': 'Intan Sari', 'phone': '0813-3344-5566', 'image': 'assets/contacts/woman.png'},
      {'name': 'Joko Santoso', 'phone': '0815-6677-8890', 'image': 'assets/contacts/man.png'},
      {'name': 'Kirana Ayu', 'phone': '0812-8899-7766', 'image': 'assets/contacts/woman.png'},
      {'name': 'Lukman Hakim', 'phone': '0813-4455-6677', 'image': 'assets/contacts/man.png'},
      {'name': 'Maya Fitri', 'phone': '0814-5566-7788', 'image': 'assets/contacts/woman.png'},
      {'name': 'Nanda Rizky', 'phone': '0812-6677-8899', 'image': 'assets/contacts/woman.png'},
      {'name': 'Oka Wibowo', 'phone': '0813-7788-9900', 'image': 'assets/contacts/man.png'},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFAF3EB),
      appBar: AppBar(
        title: const Text(
          'Contacts',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFD2E8FF),
          ),
        ),
        backgroundColor: const Color(0xFF0B1956),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.white,
            elevation: 3,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(contact['image']!),
              ),
              title: Text(
                contact['name']!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0B1956),
                ),
              ),
              subtitle: Text(contact['phone']!),
              trailing: const Icon(Icons.phone, color: Color(0xFF0B1956)),
            ),
          );
        },
      ),
    );
  }
}
