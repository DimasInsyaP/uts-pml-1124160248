
import 'package:flutter/material.dart';
import '../widgets/profile_avatar.dart';
import 'edit_profile_page.dart';
import 'about_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

String nama = 'Dimas Insya Putra';
String nim = '1124160248';
String prodi = 'Teknik Informatika';
String kelas = 'Non Reguler';
String bio =
    'Mahasiswa yang tertarik pada teknologi dan pengembangan aplikasi.';
String email = '1124160248@global.ac.id';
String hp = '088291282329';
String github = 'DimasInsyaP';

Future<void> bukaEditProfil() async {
  final dataBaru = await Navigator.push<Map<String, String>>(
    context,
    MaterialPageRoute(
      builder: (context) => EditProfilePage(
  dataProfil: {
    'nama': nama,
    'nim': nim,
    'prodi': prodi,
    'kelas': kelas,
    'bio': bio,
    'email': email,
    'hp': hp,
    'github': github,
  },
),
    ),
  );

  if (dataBaru != null) {
    setState(() {
      nama = dataBaru['nama']!;
      nim = dataBaru['nim']!;
      prodi = dataBaru['prodi']!;
      kelas = dataBaru['kelas']!;
      bio = dataBaru['bio']!;
      email = dataBaru['email']!;
      hp = dataBaru['hp']!;
      github = dataBaru['github']!;
    });
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(
                Icons.account_circle,
                size: 50,
                color: Colors.white,
              ),
              const SizedBox(height: 10),
              Text(
                nama,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Profil Pengguna',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('Profil'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.info_outline),
          title: const Text('Tentang Saya'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AboutPage(),
              ),
            );
          },
        ),
      ],
    ),
  ),
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

            Text(
                 nama,
               style: const TextStyle(
               fontSize: 24,
               fontWeight: FontWeight.bold,
                  ),
                ),
            const SizedBox(height: 8),

            Text('NIM: $nim'),
            Text('Program Studi: $prodi'),
            Text('Kelas: $kelas'),

            const SizedBox(height: 16),

            Text(
              bio,
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

             Card(
              child: ListTile(
                leading: Icon(Icons.email_outlined),
                title: Text('Email'),
                subtitle: Text(email),
              ),
            ),

             Card(
              child: ListTile(
                leading: Icon(Icons.phone_outlined),
                title: Text('Nomor HP'),
                subtitle: Text(hp),
              ),
            ),

             Card(
              child: ListTile(
                leading: Icon(Icons.code),
                title: Text('GitHub'),
                subtitle: Text(github),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
  mainAxisSize: MainAxisSize.min,
  children: [
    FloatingActionButton(
      heroTag: 'aboutButton',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AboutPage(),
          ),
        );
      },
      tooltip: 'Tentang Saya',
      child: const Icon(Icons.info_outline),
    ),

    const SizedBox(height: 12),

    FloatingActionButton(
      heroTag: 'editButton',
      onPressed: bukaEditProfil,
      tooltip: 'Edit Profil',
      child: const Icon(Icons.edit),
    ),
  ],
),
    );
  }
}
