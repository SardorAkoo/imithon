import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imithon_2/pages/access_pages_class/article.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageTabState createState() => _LoadingPageTabState();
}

class _LoadingPageTabState extends State<LoadingPage>
    with SingleTickerProviderStateMixin {
  double _width = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {});
      _width = MediaQuery.of(context).size.width - 48;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 122, 255, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Loading...',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Stack(
                children: [
                  Container(
                    height: 20,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 0.2),
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: const [
                        BoxShadow(
                          spreadRadius: 25,
                          offset: Offset(0, 0),
                          color: Color.fromRGBO(0, 122, 255, 1),
                        ),
                      ],
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(seconds: 5),
                    height: 14,
                    width: _width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          spreadRadius: 5,
                          offset: Offset(0, 0),
                          color: Color.fromRGBO(255, 255, 255, 0.45),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            const Text(
              'Just a second and we\'ll start',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            const Text(
              'the lesson!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
