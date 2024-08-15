import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                              'assets/images/Dog.jpg'), // Replace with your image asset
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.black.withOpacity(0.1),
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    TextButton(
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      child: Text(
                        'Change photo',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mr.JNShop',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text('bankok, Thailand'),
                    SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.grey.shade50,
                      ),
                      child: Text('Delete'),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            _buildTextField(label: 'Email Address', value: 'JNShop@gmail.com'),
            _buildTextField(label: 'Username', value: 'Mr.JN Shop'),
            _buildTextField(label: 'Address', value: 'Chonburi,Thailand'),
            _buildTextField(label: 'Mobile Number', value: '0123456789'),
            SizedBox(height: 120),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ), // text color
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 140, vertical: 20),
                child: Text('Save',
                    style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: TextFormField(
        initialValue: value,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.grey, fontSize: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
