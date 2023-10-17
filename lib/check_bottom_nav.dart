import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_futter/page2.dart';
import 'package:hello_futter/page3.dart';

void main() {
  Get.put(PagesController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bottom Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavigationScreen(),
    );
  }
}

class BottomNavigationScreen extends StatefulWidget {


  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    final PagesController _pagesController = Get.find();

    // @override
    // void dispose() {
    //   _pagesController.dispose();
    //   super.dispose();
    // }

    return Scaffold(
      body: Obx(
            () => _pagesController.pages[_pagesController.currentIndex.value],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _pagesController.goToPage(index);
          });

        },
        currentIndex: _pagesController.currentIndex.value,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Page A',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Page B',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Page C',
          ),
        ],
      ),
    );
  }
}

class PagesController extends GetxController {
  final List<Widget> pages = [PageA(), PageB(), PageC()];
  var currentIndex = 0.obs;

  PagesController() {
    // Set the initial index to 0 (the first page)
    currentIndex.value = 0;
  }

  void goToPage(int index) {
    print("Changing index to: $index");
    currentIndex.value = index;
  }
}

class PageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Page A'),
    );
  }
}

class PageB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Page B'),
    );
  }
}

class PageC extends StatefulWidget {
  @override
  State<PageC> createState() => _PageCState();
}

class _PageCState extends State<PageC> {
  @override
  Widget build(BuildContext context) {
    final PagesController _pagesController = Get.find();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Page C'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              _pagesController.goToPage(1); // Navigate to Page B
            },
            child: const Text('Go to Page B'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(Page2()); // Navigate to Page D
            },
            child: const Text('Go to Page D'),
          ),
        ],
      ),
    );
  }
}

class PageD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PagesController _pagesController = Get.find();

    return GetMaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: const Text('Page D'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Page D'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.to(PageE()); // Navigate to Page E
                },
                child: const Text('Go to Page E'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationScreen(),
      ),
    );
  }
}

class PageE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page E'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Page E'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.back(); // Go back to Page D
              },
              child: const Text('Go back to Page D'),
            ),
          ],
        ),
      ),
    );
  }
}
