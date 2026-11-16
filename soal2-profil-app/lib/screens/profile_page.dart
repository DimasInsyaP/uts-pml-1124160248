
import 'package:flutter/material.dart';
import '../widgets/profile_avatar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const ProfileAvatar(),
            const SizedBox(height: 16),

            const Text(
              'Dimas Insya Putra',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            const Text('NIM: 1124160248'),
            const Text('Program Studi: Teknik Informatika'),
            const Text('Kelas: Non Reguler'),

            const SizedBox(height: 16),

            const Text(
              'Mahasiswa yang tertarik pada teknologi dan pengembangan aplikasi.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
