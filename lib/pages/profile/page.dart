import 'package:flutter/material.dart';
import 'package:sang_raja/pages/profile/widgets/logout_item.dart';
import 'package:sang_raja/pages/profile/widgets/profile_menu_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Profil saya',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Profile Section
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Avatar
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey[300],
                  child: const Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 20),
                // Profile Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Raden Wijaya',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'radenwijaya@gmail.com',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[300],
                          foregroundColor: Colors.black,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 12,
                          ),
                        ),
                        child: const Text(
                          'Edit profil',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            // Menu Items
            const ProfileMenuItem(icon: Icons.language, title: 'Pengaturan 1'),
            _buildDivider(),
            const ProfileMenuItem(icon: Icons.language, title: 'Pengaturan 2'),
            _buildDivider(),
            const ProfileMenuItem(icon: Icons.language, title: 'Pengaturan 3'),
            _buildDivider(),
            const ProfileMenuItem(icon: Icons.language, title: 'Pengaturan 4'),
            _buildDivider(),
            const ProfileMenuItem(icon: Icons.language, title: 'Pengaturan 5'),
            _buildDivider(),
            const ProfileMenuItem(icon: Icons.language, title: 'Pengaturan 6'),
            _buildDivider(),
            const ProfileMenuItem(icon: Icons.language, title: 'Pengaturan 7'),
            _buildDivider(),
            const LogoutItem(),
            _buildDivider(),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return const Divider(
      thickness: 1,
      color: Colors.black,
      height: 1,
    );
  }
}