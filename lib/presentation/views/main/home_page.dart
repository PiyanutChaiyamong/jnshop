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
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SearchWidget(),
          SizedBox(height: 150),
          TextHeader(),
          SizedBox(height: 150),
          CategoryPage(),
          ProductItem(),
          // EditProfilePage(),
        ],
      ),
    );
  }
}
