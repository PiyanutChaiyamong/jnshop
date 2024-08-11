import 'package:flutter/material.dart';
import 'package:jnshop/presentation/widgets/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

String _searchQuery = '';

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: SearchWidget(),
          ),
          SizedBox(
            height: 200,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget _buildGridItem(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 60),
        SizedBox(height: 8),
        Text(label, textAlign: TextAlign.center),
      ],
    );
  }
}
