import 'package:flutter/material.dart';

class BarMenuPage extends StatefulWidget {
  const BarMenuPage({super.key});

  @override
  State<BarMenuPage> createState() => _BarMenuPageState();
}

class _BarMenuPageState extends State<BarMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Chat',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12)),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 21,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Image.asset('assets/appBar.png'),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Tasks today',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 16,
              ),
              Image.asset(
                'assets/info_fon.png',
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Help those who are learning Russian',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 16,
              ),
              Image.asset('assets/mark_info.png'),
              SizedBox(
                height: 16,
              ),
              Image.asset('assets/jessica_jones.png'),
              SizedBox(
                height: 16,
              ),
              Image.asset('assets/premium_foto.png')
            ],
          ),
        ),
      ),
    );
  }
}
