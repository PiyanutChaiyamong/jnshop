import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        fillColor: Colors.grey.shade200,
        filled: true,
        hintText: 'Search',
        labelStyle: const TextStyle(color: Colors.grey),
        suffixIcon: const Icon(Icons.search_sharp),
      ),
    );
  }
}
