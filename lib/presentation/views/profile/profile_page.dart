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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Stack(
              alignment: Alignment.center,
              children: [
                // Outer circle
                Container(
                  width: 200, // Adjust size of outer circle
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.blue,
                        width: 4), // Outer circle color and width
                  ),
                ),
                // Inner circle
                Container(
                  width: 150, // Adjust size of inner circle
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.white,
                        width: 4), // Inner circle color and width
                  ),
                ),
                // CircleAvatar with image
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Dog.jpg"),
                  radius: 40,
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Center(
              child: Text(
                'JNShop',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'Active Status',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 50),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Edit Profile',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
            SizedBox(height: 18),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Shopping Address',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
            SizedBox(height: 18),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Wishlist',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
            SizedBox(height: 18),
            ListTile(
              leading: Icon(Icons.event_note_sharp),
              title: Text('Order History',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
            SizedBox(height: 18),
            ListTile(
              leading: Icon(Icons.notifications_sharp),
              title: Text('Notification',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
            SizedBox(height: 18),
            ListTile(
              leading: Icon(Icons.credit_card_sharp),
              title: Text('Card',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
