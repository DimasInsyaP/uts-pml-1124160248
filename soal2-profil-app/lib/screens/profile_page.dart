
import 'package:flutter/material.dart';
import '../widgets/profile_avatar.dart';
import 'edit_profile_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: const Text('Profil Pengguna'),
  centerTitle: true,
  actions: [
    IconButton(
      icon: const Icon(Icons.edit),
      tooltip: 'Edit Profil',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EditProfilePage(),
          ),
        );
      },
    ),
  ],
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

            const SizedBox(height: 24),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Informasi Kontak',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),

            const SizedBox(height: 12),

            const Card(
              child: ListTile(
                leading: Icon(Icons.email_outlined),
                title: Text('Email'),
                subtitle: Text('1124160248@global.ac.id'),
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(Icons.phone_outlined),
                title: Text('Nomor HP'),
                subtitle: Text('088291282329'),
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(Icons.code),
                title: Text('GitHub'),
                subtitle: Text('DimasInsyaP'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
