import 'package:flutter/material.dart';
import 'package:imithon_2/pages/access_pages_class/access.dart';
import 'package:imithon_2/pages/access_pages_class/article.dart';
import 'package:imithon_2/pages/access_pages_class/loading.dart';
import 'package:imithon_2/pages/access_pages_class/waiting_access.dart';
import 'package:imithon_2/sign_up/start_login.dart';

class AccessPages extends StatefulWidget {
  const AccessPages({super.key});

  @override
  State<AccessPages> createState() => _AccessPagesState();
}

class _AccessPagesState extends State<AccessPages> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: TabBarView(
          children: [
            AccessHomePage(),
            LoadingPage(),
            ArticlePage(),
            WaitingAccessPage(),
            StartLoginPage()
          ],
        ),
      ),
    );
  }
}
