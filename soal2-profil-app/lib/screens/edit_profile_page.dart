
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final TextEditingController namaController =
      TextEditingController(text: 'Dimas Insya Putra');

  final TextEditingController nimController =
      TextEditingController(text: '1124160248');

  final TextEditingController prodiController =
      TextEditingController(text: 'Teknik Informatika');

  final TextEditingController kelasController =
      TextEditingController(text: 'Non Reguler');

  final TextEditingController bioController =
      TextEditingController(
    text: 'Mahasiswa yang tertarik pada teknologi dan pengembangan aplikasi.',
  );

  final TextEditingController emailController =
      TextEditingController(text: '1124160248@global.ac.id');

  final TextEditingController hpController =
      TextEditingController(text: '088291282329');

  final TextEditingController githubController =
      TextEditingController(text: 'DimasInsyaP');

  @override
  void dispose() {
    namaController.dispose();
    nimController.dispose();
    prodiController.dispose();
    kelasController.dispose();
    bioController.dispose();
    emailController.dispose();
    hpController.dispose();
    githubController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profil'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildField('Nama Lengkap', namaController),
            _buildField('NIM', nimController),
            _buildField('Program Studi', prodiController),
            _buildField('Kelas', kelasController),
            _buildField(
              'Bio Singkat',
              bioController,
              maxLines: 3,
            ),
            _buildField('Email', emailController),
            _buildField('Nomor HP', hpController),
            _buildField('Akun GitHub', githubController),
          ],
        ),
      ),
    );
  }

  Widget _buildField(
    String label,
    TextEditingController controller, {
    int maxLines = 1,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
