import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imithon_2/sign_up/login_page.dart';

class StartLoginPage extends StatefulWidget {
  const StartLoginPage({super.key});

  @override
  State<StartLoginPage> createState() => _StartLoginPageState();
}

class _StartLoginPageState extends State<StartLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 114,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset('assets/start_logo_fon.png'),
              Positioned(
                top: -25,
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
                top: -64,
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromRGBO(248, 248, 248, 1),
                  ),
                  child: Image.asset('assets/moon_logo.png'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Learn a language \nin 3 minute a day',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 16,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) {
                    return LoginAcountPage();
                  },
                ),
              );
            },
            icon: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width - 32,
              height: 48,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 122, 255, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'Start learning',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Already, have an account?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return LoginAcountPage();
                      },
                    ),
                  );
                },
                child: const Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 122, 255, 1),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
