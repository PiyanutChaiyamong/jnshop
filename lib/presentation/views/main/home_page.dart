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
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          )),
      SizedBox(height: 16),
      Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          color: Colors.grey.shade100,
          width: 250,
          height: 250,
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 4,
            child: Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/Dog.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ), // Add more widgets here...
      ),
      SizedBox(height: 8),
      Text(
        "Dog",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    ]));
  }
}
