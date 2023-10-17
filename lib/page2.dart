import 'package:flutter/material.dart';

import 'check_bottom_nav.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      //  bottomNavigationBar: BottomNavigationScreen(),
        body: Container(
          color: Colors.orange,
        ),
      ),
    );
  }
}
