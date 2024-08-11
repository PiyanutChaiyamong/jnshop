import 'package:flutter/material.dart';
import 'package:jnshop/presentation/widgets/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

String _selectedCategory = 'All';

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
              )),
          SizedBox(
            width: 16,
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCategoryItem(
                    'ความงานและของใช้ส่วนตัว',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  _buildCategoryItem(
                    'กลุ่มผลิตภัณฑ์เพื่อสุขภาพ',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  _buildCategoryItem(
                    'เสื้อผ้าแฟชั่นผู้ชาย',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  _buildCategoryItem(
                    'เสื้อผ้าแฟชั่นผู้หญิง',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  _buildCategoryItem(
                    'กระเป๋า',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  _buildCategoryItem(
                    'รองเท้าผู้ชาย',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  _buildCategoryItem(
                    'รองเท้าผู้หญิง',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  _buildCategoryItem(
                    'มือถือ',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  _buildCategoryItem(
                    'เครื่องประดับ',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String category) {
    bool isSelected = _selectedCategory == category;

    return TextButton(
      onPressed: () {
        setState(() {
          _selectedCategory = category;
        });
      },
      style: TextButton.styleFrom(
        backgroundColor: isSelected ? Colors.green : Colors.transparent,
        padding: EdgeInsets.all(16),
        side: BorderSide(color: isSelected ? Colors.green : Colors.black),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Text(
        category,
        style: TextStyle(color: isSelected ? Colors.white : Colors.black),
      ),
    );
  }
}
