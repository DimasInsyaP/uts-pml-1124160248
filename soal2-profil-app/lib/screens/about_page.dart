
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Saya'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children:  [
          Text(
            'Tentang Saya',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Halaman ini berisi informasi mengenai keahlian, '
            'hobi, dan riwayat pendidikan saya.',
          ),
          SizedBox(height: 20),

Text(
  'Keahlian dan Hobi',
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
),

SizedBox(height: 10),

Card(
  child: ListTile(
    leading: Icon(Icons.phone_android),
    title: Text('Flutter Development'),
    subtitle: Text('Pengembangan aplikasi mobile'),
  ),
),

Card(
  child: ListTile(
    leading: Icon(Icons.web),
    title: Text('Web Development'),
    subtitle: Text('Pembuatan dan pengembangan website'),
  ),
),

Card(
  child: ListTile(
    leading: Icon(Icons.code),
    title: Text('Programming'),
    subtitle: Text('Mempelajari bahasa pemrograman'),
  ),
),

const SizedBox(height: 25),

const Text(
  'Riwayat Pendidikan',
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
),

const SizedBox(height: 10),

const Card(
  child: ListTile(
    leading: Icon(Icons.school),
    title: Text('Sekolah Menengah Atas'),
    subtitle: Text('Pendidikan tingkat SMA/SMK'),
  ),
),

const Card(
  child: ListTile(
    leading: Icon(Icons.account_balance),
    title: Text('Global Institute'),
    subtitle: Text('Program Studi Teknik Informatika'),
  ),
),
        ],
      ),
    );
  }
}
