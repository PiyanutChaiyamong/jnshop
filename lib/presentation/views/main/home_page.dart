import 'package:flutter/material.dart';
import 'package:jnshop/presentation/widgets/homewidget/build_category_list.dart';
import 'package:jnshop/presentation/widgets/homewidget/product_item.dart';
import 'package:jnshop/presentation/widgets/homewidget/search_widget.dart';
import 'package:jnshop/presentation/widgets/homewidget/text_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

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
          SizedBox(height: 150),
          TextHeader(),
          SizedBox(height: 16),
          CategoryPage(),
          ProductItem(),
          // EditProfilePage(),
        ],
      ),
    );
  }
}
