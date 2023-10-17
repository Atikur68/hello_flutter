import 'package:flutter/material.dart';
import 'package:hello_futter/main.dart';
import 'package:hello_futter/page1.dart';
import 'package:hello_futter/page2.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  var index=0;
  final pages=[

    Page2(),
    PageViewPractice(),
    Page1(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.deepOrange,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GestureDetector(
              child: CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.ac_unit,
                  size: 50,
                ),
              ),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> MyApp()));
              },
            ),
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   backgroundColor: Colors.cyanAccent,
        //   currentIndex: index,
        //   items: [
        //     BottomNavigationBarItem(
        //       label: "House",
        //       icon: Icon(Icons.home),
        //
        //     ),
        //     BottomNavigationBarItem(
        //       label: "Notice",
        //       icon: Icon(Icons.notifications),
        //
        //     ),
        //     BottomNavigationBarItem(
        //       label: "Bondhu",
        //       icon: Icon(Icons.face),
        //
        //     ),
        //   ],
        //   onTap: (ind){
        //     setState(() {
        //       index=ind;
        //     });
        //   },
        // ),
        // body: pages[index]
      ),
    );
  }
}
