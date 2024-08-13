import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 5),
            const Center(
              child: Text(
                'โปรไฟล์',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 5),
            Stack(
              alignment: Alignment.center,
              children: [
                // Outer circle
                Container(
                  width: 230, // Adjust size of outer circle
                  height: 230,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1), // Outer circle color and width
                  ),
                ),
                // Inner circle
                Container(
                  width: 180, // Adjust size of inner circle
                  height: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.blue.shade400,
                        width: 1), // Inner circle color and width
                  ),
                ),
                // CircleAvatar with image
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Dog.jpg'),
                  radius: 60,
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                'Mr.JNShop',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 160),
              child: Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.green,
                    size: 10,
                  ),
                  SizedBox(
                    height: 30,
                    width: 5,
                  ),
                  Text(
                    'Active Status',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            ListTile(
              leading: const Icon(Icons.person, size: 30),
              title: const Text(
                'Edit Profile',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 5),
            ListTile(
              leading: const Icon(Icons.location_on, size: 30),
              title: const Text(
                'Shopping Address',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 5),
            ListTile(
              leading: const Icon(Icons.event_note_sharp, size: 30),
              title: const Text(
                'Order History',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 5),
            ListTile(
              leading: const Icon(Icons.notifications_sharp, size: 30),
              title: const Text(
                'Notification',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 5),
            ListTile(
              leading: const Icon(Icons.credit_card_sharp, size: 30),
              title: const Text(
                'Card',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
