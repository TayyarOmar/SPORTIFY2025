import 'package:flutter/material.dart';
import 'package:project_flutter/exersies/Bodybuilding.dart'; // comment

class AchievementsPage extends StatefulWidget {
  const AchievementsPage({super.key});

  @override
  State<AchievementsPage> createState() => _AchievementsPageState();
}

class _AchievementsPageState extends State<AchievementsPage> {
  int _currentIndex = 0; // Track the current selected index

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Bodybuilding()),
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
          icon: const Icon(Icons.arrow_back, color: Color(0xFFE16112)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            Image.asset('assets/images/sportify.jpeg', width: 32, height: 32),
            const SizedBox(width: 8),
            const Text(
              "SportiFy",
              style: TextStyle(
                color: Color(0xFFE16112),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            const Text(
              'Achievements',
              style: TextStyle(
                color: Color(0xFFE16112),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/Achievements.jpeg',
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  buildAchievementCard(
                    title: 'First 5K',
                    subtitle: 'Complete your first 5-kilometer run/walk.',
                    value: 5,
                    max: 5,
                    icon: Icons.directions_run,
                    color: const Color(0xFFE16112),
                  ),
                  const SizedBox(height: 12),
                  buildAchievementCard(
                    title: 'Weekly Warrior',
                    subtitle: 'Work out every day for a full week.',
                    value: 7,
                    max: 7,
                    icon: Icons.calendar_today,
                    color: Colors.blueAccent,
                  ),
                  const SizedBox(height: 12),
                  buildAchievementCard(
                    title: '100 KM Club',
                    subtitle: 'Run, bike, or swim a total of 100 kilometers.',
                    value: 81,
                    max: 100,
                    icon: Icons.directions_bike,
                    color: Colors.greenAccent,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      // Added the same bottom navigation bar as GramsGymPage
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
            label:
                'Scan QR', // Changed from 'ScanQR' to 'Scan QR' for consistency
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget buildAchievementCard({
    required String title,
    required String subtitle,
    required int value,
    required int max,
    required IconData icon,
    required Color color,
  }) {
    double percentage = value / max;
    bool isComplete = value >= max;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: color),
              const SizedBox(width: 8),
              Text(
                '$title $value/$max',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              Icon(
                isComplete ? Icons.check_circle : Icons.check_box_outline_blank,
                color: isComplete ? Colors.green : Colors.grey,
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(subtitle),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: percentage,
              backgroundColor: Colors.grey.shade300,
              valueColor: AlwaysStoppedAnimation<Color>(color),
              minHeight: 6,
            ),
          ),
        ],
      ),
    );
  }
}
