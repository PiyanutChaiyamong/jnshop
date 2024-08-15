import 'package:flutter/material.dart';
import 'package:jnshop/presentation/views/details/detail_page.dart'; // Import the DetailPage

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildFeaturedItem(context);
  }

  Widget _buildFeaturedItem(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 180,
              height: 180,
              child: Card(
                color: Colors.grey.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: GestureDetector(
                  onTap: () {
                    // Navigate to ProductPage when the image is clicked
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductPage(), // Navigate to the ProductPage
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/NIKE4.png',
                          height: 125,
                          width: 125,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
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
                "Nike",
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
            "\$199.00",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
