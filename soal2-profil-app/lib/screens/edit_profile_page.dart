
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();

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

  void _validasiForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Validasi berhasil! Data siap disimpan.'),
        ),
      );
    }
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
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _buildField('Nama Lengkap', namaController,
                  validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Nama wajib diisi';
                }
                return null;
              }),

              _buildField('NIM', nimController),
              _buildField('Program Studi', prodiController),
              _buildField('Kelas', kelasController),

              _buildField(
                'Bio Singkat',
                bioController,
                maxLines: 3,
              ),

              _buildField('Email', emailController,
                  validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Email wajib diisi';
                }

                final emailRegex =
                    RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

                if (!emailRegex.hasMatch(value.trim())) {
                  return 'Masukkan format email yang valid';
                }

                return null;
              }),

              _buildField('Nomor HP', hpController,
                  validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Nomor HP wajib diisi';
                }

                if (!RegExp(r'^[0-9]{10,13}$').hasMatch(value)) {
                  return 'Nomor HP harus 10–13 digit angka';
                }

                return null;
              }),

              _buildField('Akun GitHub', githubController),

              const SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _validasiForm,
                  child: const Text('Simpan'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildField(
    String label,
    TextEditingController controller, {
    int maxLines = 1,
    String? Function(String?)? validator,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        validator: validator,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
