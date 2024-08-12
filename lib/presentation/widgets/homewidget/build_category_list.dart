import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  String _selectedCategory = '';

  @override
  Widget build(BuildContext context) {
    return _buildCategoryList();
  }

  Widget _buildCategoryList() {
    final categories = [
      'ความงามและของใช้ส่วนตัว',
      'กลุ่มผลิตภัณฑ์เพื่อสุขภาพ',
      'เสื้อผ้าแฟชั่นผู้ชาย',
      'เสื้อผ้าแฟชั่นผู้หญิง',
      'กระเป๋า',
      'รองเท้าผู้ชาย',
      'รองเท้าผู้หญิง',
      'มือถือ',
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categories.map((category) {
            return Padding(
              padding: EdgeInsets.only(right: 8),
              child: _buildCategoryItem(category),
            );
          }).toList(),
        ),
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
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
