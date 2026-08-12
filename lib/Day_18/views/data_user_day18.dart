import 'package:flutter/material.dart';
import 'package:flutter_application_1/Day_18/database/db_helper.dart';
import 'package:flutter_application_1/Day_18/models/user_login_model.dart';

class DataUserDay18 extends StatefulWidget {
  const DataUserDay18({super.key});

  @override
  State<DataUserDay18> createState() => _DataUserDay18State();
}

class _DataUserDay18State extends State<DataUserDay18> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data pengguna ")),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder<List<UserModelSQL>>(
                future: DBHelper().getAllUsers(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (snapshot.hasError) {
                    return Center(
                      child: Text('Terjadi kesalahan: ${snapshot.error}'),
                    ); // Center
                  }

                  if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Center(
                      child: Text('Tidak ada data pengguna.'),
                    ); // Center
                  }

                  final daftarPengguna = snapshot.data!;

                  return ListView.builder(
                    itemCount: daftarPengguna.length,
                    itemBuilder: (context, index) {
                      final user = daftarPengguna[index];
                      return Card(
                        child: ListTile(
                          leading: const CircleAvatar(
                            child: Icon(Icons.person),
                          ), // CircleAvatar
                          title: Text(user.email),
                          subtitle: Text('Password: ${user.password}'),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.delete),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.edit),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.person),
                              ),
                            ],
                          ),
                        ), // ListTile
                      ); // Card
                    },
                  ); // ListView.builder
                },
              ), // FutureBuilder
            ),
          ],
        ),
      ),
    );
  }
}
