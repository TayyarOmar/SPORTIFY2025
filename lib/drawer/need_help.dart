import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C2120),
      appBar: AppBar(
        backgroundColor: Color(0xFFE16112),
        foregroundColor: Colors.black,
        title: const Text('Help'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Color(0xFFE16112),
                  shape: BoxShape.rectangle,
                ),
                child: Center(
                  child: Text(
                    'S',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'FAQ :',
                style: TextStyle(
                  color: Color(0xFFE16112),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ExpansionTile(
              title: const Text(
                'About Sportify',
                style: TextStyle(color: Color(0xFFE16112)),
              ),
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Sportify was founded in 2020 to be the new era’s online marketplace for sports enthusiasts and a leading smart fitness application.\n\n"
                    "We believe in health, time, and flexibility; therefore, we strive to deliver the best and easiest way to access fitness and sports experiences across all facilities!",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            buildFaqItem(context, 'What is Sportify?'),
            buildFaqItem(context, 'How to use Sportify?'),
            buildFaqItem(context, 'How to buy passes?'),
            buildFaqItem(context, 'Where to use Sportify?'),
          ],
        ),
      ),
    );
  }

  Widget buildFaqItem(BuildContext context, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        title: Text(title, style: const TextStyle(color: Color(0xFFE16112))),
        trailing: const Icon(Icons.arrow_forward_ios, color: Color(0xFFE16112)),
        onTap: () {
          // TODO: Add navigation or dialog here
        },
      ),
    );
  }
}
