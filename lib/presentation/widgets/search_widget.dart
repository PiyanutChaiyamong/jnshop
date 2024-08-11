import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        fillColor: Colors.grey.shade200,
        filled: true,
        labelText: 'Search',
        labelStyle: TextStyle(color: Colors.grey),
        suffixIcon: Icon(Icons.search_sharp),
      ),
    );
  }
}
