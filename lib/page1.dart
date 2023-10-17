import 'package:flutter/material.dart';
import 'package:hello_futter/page3.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.cyanAccent,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GestureDetector(
              child: CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.adb,
                  size: 50,
                ),
              ),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> Page3()));
              },
            ),
          ),
        ),
      ),
    );
  }
}
