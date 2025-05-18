import 'package:flutter/material.dart';
import 'package:project_flutter/create_pro/grams_gym_page.dart';
import 'package:project_flutter/drawer/need_help.dart';
import 'package:project_flutter/exersies/my_bookings_page.dart';
import 'package:project_flutter/fitnessplans/fitnessplan_screen.dart';
import 'package:project_flutter/groupactivites/AchievementsPage.dart';

import 'package:project_flutter/groupactivites/GymsPage.dart';
import 'package:project_flutter/groupactivites/groupactivities.dart';
import 'package:project_flutter/welcome2/login_screen.dart';
// Add your help screen import

class Bodybuilding extends StatefulWidget {
  const Bodybuilding({super.key});

  @override
  State<Bodybuilding> createState() => _BodybuildingState();
}

class _BodybuildingState extends State<Bodybuilding> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const GramsGymPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C2120),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C2120),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 28,
            color: Color(0xFFE16112),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset(
                'assets/images/sportify.jpeg',
                width: 36,
                height: 36,
                fit: BoxFit.contain,
              ),
            ),
            const Text(
              "SportiFy",
              style: TextStyle(
                color: Color(0xFFE16112),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Builder(
            builder:
                (context) => IconButton(
                  icon: const Icon(
                    Icons.menu,
                    size: 28,
                    color: Color(0xFFE16112),
                  ),
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                ),
          ),
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: const Color(0xFF1C2120),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF1C2120)),
              child: Center(
                child: Text(
                  'Welcome back!',
                  style: TextStyle(
                    color: Color(0xFFE16112),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            _buildDrawerButton(
              Icons.fitness_center,
              'Gyms',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GymSearchPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 5),
            _buildDrawerButton(
              Icons.assignment,
              'Plans',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FitnessPlansScreen(),
                  ),
                );
              },
            ),
            _buildDrawerButton(
              Icons.group,
              'Group Activities',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GroupActivitiesPage(),
                  ),
                );
              },
            ),
            _buildDrawerButton(
              Icons.bookmark,
              'My bookings',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyBookingsPage(),
                  ),
                );
              },
            ),
            _buildDrawerButton(
              Icons.emoji_events,
              'Achievements',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AchievementsPage(),
                  ),
                );
              },
            ),
            _buildDrawerButton(Icons.shopping_cart, 'Cart'),
            _buildDrawerButton(Icons.subscriptions, 'Subscriptions'),
            const Divider(color: Colors.white54),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HelpScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE16112),
                ),
                child: const Text(
                  'Need help?',
                  style: TextStyle(color: Color(0xFF1C2120)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Text(
                  'Log out',
                  style: TextStyle(color: Color.fromARGB(255, 199, 40, 40)),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const Text(
                'Welcome back Ezz Aldeen',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 25),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/images/gym2.jpeg',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Activity Tracking',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE16112),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Text(
                        'Plan: Bodybuilding',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              _buildActivityCard(
                icon: Icons.fitness_center,
                title: 'Chest',
                progress: 0.7,
                subtitle: '2/4 hours',
                color: Colors.blueAccent,
                iconSize: 28,
              ),
              const SizedBox(height: 16),
              _buildActivityCard(
                icon: Icons.accessibility_new,
                title: 'Shoulders',
                progress: 0.15,
                subtitle: '1/4 hours',
                color: Colors.redAccent,
                iconSize: 28,
              ),
              const SizedBox(height: 16),
              _buildActivityCard(
                icon: Icons.directions_run,
                title: 'Legs',
                progress: 0.5,
                subtitle: '3/4 hours',
                color: Colors.blueAccent,
                iconSize: 28,
              ),
              const SizedBox(height: 16),
              _buildActivityCard(
                icon: Icons.rotate_90_degrees_ccw,
                title: 'Back',
                progress: 0.64,
                subtitle: '3/4 hours',
                color: Colors.deepOrange,
                iconSize: 28,
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFE16112),
        elevation: 4,
        onPressed: () {},
        child: const Icon(Icons.fitness_center, color: Colors.white, size: 28),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1C2120),
        selectedItemColor: const Color(0xFFE16112),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Scan QR',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildDrawerButton(
    IconData icon,
    String label, {
    VoidCallback? onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: ElevatedButton.icon(
        onPressed: onPressed ?? () {},
        icon: Icon(icon, color: Colors.black),
        label: Text(label, style: const TextStyle(color: Colors.black)),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFE16112),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
      ),
    );
  }

  Widget _buildActivityCard({
    required IconData icon,
    required String title,
    required double progress,
    String? subtitle,
    required Color color,
    double iconSize = 24,
  }) {
    return Card(
      color: const Color(0xFF2A2F2E),
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon, color: color, size: iconSize),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                if (subtitle != null)
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 14,
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 16),
            LinearProgressIndicator(
              value: progress,
              color: color,
              backgroundColor: Colors.grey.withOpacity(0.3),
              minHeight: 8,
              borderRadius: BorderRadius.circular(4),
            ),
          ],
        ),
      ),
    );
  }
}
