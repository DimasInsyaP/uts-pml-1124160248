
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 65,
      backgroundColor: Colors.blue.shade100,
      backgroundImage: const AssetImage(
        'assets/images/profile.jpg',
      ),
    );
  }
}
