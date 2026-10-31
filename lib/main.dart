import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 60),
            ),
            SizedBox(height: 16),
            Text(
              'Nama Saya',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text('Mahasiswa'),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('10', style: TextStyle(fontSize: 20)),
                    Text('Proyek'),
                  ],
                ),
                Column(
                  children: [
                    Text('5', style: TextStyle(fontSize: 20)),
                    Text('Sertifikat'),
                  ],
                ),
                Column(
                  children: [
                    Text('3', style: TextStyle(fontSize: 20)),
                    Text('Pengalaman'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}