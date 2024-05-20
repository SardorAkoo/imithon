import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imithon_2/menu_bar/chat_menu.dart';
import 'package:imithon_2/menu_bar/firstPage.dart';
import 'package:imithon_2/menu_bar/glavniy_menu.dart';
import 'package:imithon_2/menu_bar/profil_page.dart';
import 'package:imithon_2/menu_bar/vacobulary.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 62,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset('assets/welcome_logo_fon.png'),
              Positioned(
                top: 30,
                left: 145,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      width: 48,
                      height: 48,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Text(
                      'Speaker.',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 337,
                top: -15,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromRGBO(248, 248, 248, 1),
                  ),
                  child: Image.asset('assets/moon_logo.png'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.0),
            child: Text(
              textAlign: TextAlign.center,
              'Welcome to your first lessons!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Text(
            textAlign: TextAlign.center,
            'Let\'s start studying!',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) {
                    return FirstPage();
                  },
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromRGBO(0, 122, 255, 1),
              ),
              child: const Text(
                'Continue',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
