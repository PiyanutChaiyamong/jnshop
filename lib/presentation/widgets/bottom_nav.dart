import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key, this.currentIndex = 0, this.onTap});

  final void Function(int)? onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'หน้าแรก',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'ค้นหา',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: 'ถูกใจ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'โปรไฟล์',
        ),
      ],
    );
  }
}
