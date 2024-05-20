import 'package:flutter/material.dart';

class CurvedBottomNavigationBar extends StatelessWidget {
  final int index;
  final Function(int)? onTapBottomBar;

  CurvedBottomNavigationBar({
    super.key,
    required this.index,
    required this.onTapBottomBar,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: BottomNavigationBar(
        onTap: onTapBottomBar,
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/book_icon.png',
              width: 25,
              color: index == 0 ? Colors.blue : Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/b_harfi.png',
              width: 18,
              color: index == 1 ? Colors.blue : Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/sms.png',
              width: 25,
              color: index == 2 ? Colors.blue : Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/person_image.png',
              width: 20,
              color: index == 3 ? Colors.blue : Colors.black,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
