import 'package:flutter/material.dart';
import 'package:hello_futter/page1.dart';
import 'package:hello_futter/page2.dart';
import 'package:hello_futter/page3.dart';

class NavPageView extends StatefulWidget {
  const NavPageView({super.key});

  @override
  State<NavPageView> createState() => _NavPageViewState();
}

class _NavPageViewState extends State<NavPageView> {
  PageController _pageController= PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          scrollDirection: Axis.vertical,
          controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
          children: [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
      ),
    );
  }
}
