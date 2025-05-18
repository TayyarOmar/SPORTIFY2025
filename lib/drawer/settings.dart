import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C2120),
      appBar: AppBar(
        backgroundColor: Color(0xFFE16112),
        title: const Text(
          'Sportify',
          style: TextStyle(
            color: Color(0xFF1C2120),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Ezz Aldeen',
              style: TextStyle(
                color: Color(0xFFE16112),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(color: Colors.grey, height: 40),

            // Your Account Section
            const Text(
              'Your account',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _buildAccountItem('Personal information'),
            _buildAccountItem('Notifications'),
            _buildAccountItem('Manage business profile'),
            _buildAccountItem('Favorite facilities'),
            _buildAccountItem('Settings'),
            const Divider(color: Colors.grey, height: 40),

            // Bottom Navigation
            _buildBottomNavItem('Home'),
            _buildBottomNavItem('Explore'),
            _buildBottomNavItem('Scan QR'),
            _buildBottomNavItem('Profile', isSelected: true),
          ],
        ),
      ),
    );
  }

  Widget _buildAccountItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }

  Widget _buildBottomNavItem(String text, {bool isSelected = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Color(0xFFE16112) : Colors.white,
          fontSize: 16,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
