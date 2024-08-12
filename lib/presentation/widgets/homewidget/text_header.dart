import 'package:flutter/material.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Categories', style: TextStyle(fontSize: 20)),
          Text(
            'See all',
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}
