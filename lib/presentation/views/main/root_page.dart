import 'package:flutter/material.dart';
import 'package:jnshop/presentation/views/chat/chat_page.dart';
import 'package:jnshop/presentation/views/checkbill/check_bill_page.dart';
import 'package:jnshop/presentation/views/favorite/favorite_page.dart';
import 'package:jnshop/presentation/views/main/home_page.dart';
import 'package:jnshop/presentation/views/setting/setting_page.dart';
import 'package:jnshop/presentation/widgets/bottom_nav.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;

  List<Widget> get _children => [
        const HomePage(),
        const FavoritePage(),
        const ChatPage(),
        const SettingPage(),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 150,
        leading: const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            'JNShop',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
        // title: Text(getTitle(_currentIndex)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckBillPage(),
                      ),
                    );
                  },
                  child: const Icon(Icons.shopping_bag_outlined),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
      ),
      body: _children[_currentIndex],
    ); // Closing bracket for build method
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  String getTitle(int index) {
    switch (index) {
      case 0:
        return 'หน้าแรก';
      case 1:
        return 'ค้นหา';
      case 2:
        return 'ถูกใจ';
      case 3:
        return 'โปรไฟล์';
      default:
        return 'หน้าแรก';
    }
  }
}
