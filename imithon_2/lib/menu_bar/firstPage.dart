import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imithon_2/menu_bar/batom.dart';
import 'package:imithon_2/menu_bar/chat_menu.dart';
import 'package:imithon_2/menu_bar/glavniy_menu.dart';
import 'package:imithon_2/menu_bar/profil_page.dart';
import 'package:imithon_2/menu_bar/vacobulary.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _currentIndex = 0;
  List _pages = [GlavniyMenu(), BarMenuPage(), VacobularyPage(), ProfilPage()];

  void onTapBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedBottomNavigationBar(
        index: _currentIndex,
        onTapBottomBar: (index) => onTapBar(index),
      ),
    );
  }
}
