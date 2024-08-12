import 'package:flutter/material.dart';

class FeaturedItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildFeaturedItem();
  }

  Widget _buildFeaturedItem() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey.shade100,
              width: 180,
              height: 180,
              child: Card(
                color: Colors.grey.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/Dog.jpg',
                        height: 125,
                        width: 125,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            _buildFeaturedItemDetails(),
          ],
        ),
      ),
    );
  }

  Widget _buildFeaturedItemDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Dog",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            SizedBox(width: 85),
            Icon(Icons.star, color: Colors.orangeAccent),
            SizedBox(width: 4),
            Text(
              "4.9",
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ],
        ),
        SizedBox(height: 3),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            "\$132.00",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
