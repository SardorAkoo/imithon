import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WaitingAccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 242, 255, 1),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '99.9',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Image.asset(
              'assets/percent.png',
              width: 30.43,
              height: 31.01,
              color: Color.fromRGBO(0, 122, 255, 1),
            )
          ],
        ),
      ),
    );
  }
}
