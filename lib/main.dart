import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hello_futter/data_class.dart';
import 'package:hello_futter/data_class_second.dart';
import 'package:hello_futter/nav_check_with_pageview.dart';
import 'package:hello_futter/page1.dart';
import 'package:hello_futter/page2.dart';
import 'package:hello_futter/page3.dart';
import 'package:hello_futter/provider_main.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';

import 'camerapage.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context)=>ProviderDataClass()),
    ChangeNotifierProvider(create: (context)=>ProviderDataClassSecond()),
  ],
      child:MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainClass());
  }
}

class MainClass extends StatelessWidget {
  const MainClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
        backgroundColor: Colors.orangeAccent,
       // foregroundColor: Colors.deepOrange,
        centerTitle: true,
        leading: Icon(Icons.cake),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera))
          // TextButton.icon(onPressed: (){}, icon: Icon(Icons.camera), label: Text("Hi"))
        ],
      ),
      backgroundColor: Colors.amber,
      body: ListView(children: [
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.adb)),
          title: Text("Container"),
          subtitle: Text("practice container"),
          trailing: Icon(Icons.ac_unit),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ContainerPractice()),
            );
          },
        ),
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.adb)),
          title: Text("Stack & Positined"),
          subtitle: Text("practice stack and positioned"),
          trailing: Icon(Icons.ac_unit),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => StackPractice()));
          },
        ),
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.adb)),
          title: Text("Image Practice"),
          subtitle: Text("From asset and network"),
          trailing: Icon(Icons.ac_unit),
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ImagePractice()));
          },
        ),
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.adb)),
          title: Text("Tiny Tidbits"),
          subtitle: Text("Hello Tiny Tidbits"),
          trailing: Icon(Icons.ac_unit),
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TinyTidbits()));
          },
        ),
        ListTile(
          title: Text("Liquid Swipe Practice"),
          subtitle: Text("This is liquid swipe"),
          leading: CircleAvatar(child: Icon(Icons.lan),),
          trailing: Icon(Icons.access_alarm),
          onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => LiquidSwipePractice()));
          },
        ),
        ListTile(
          title: Text("Card & Gridview Practice"),
          subtitle: Text("Card & Gridview Practice"),
          leading: CircleAvatar(child: Icon(Icons.lan),),
          trailing: Icon(Icons.access_alarm),
          onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => CardGridViewPractice()));
          },
        ),
        ListTile(
          title: Text("Expanded wdget Practice"),
          subtitle: Text("Expanded widget Practice"),
          leading: CircleAvatar(child: Icon(Icons.accessibility_sharp),),
          trailing: Icon(Icons.access_time_filled),
          onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => ExpandedWidgetPractice()));
          },
        ),
        ListTile(
          title: Text("PageView Practice"),
          subtitle: Text("PageView Practice"),
          leading: CircleAvatar(child: Icon(Icons.accessibility_sharp),),
          trailing: Icon(Icons.access_time_filled),
          onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => PageViewPractice()));
          },
        ),
        ListTile(
          title: Text("Bottom Navigation Practice"),
          subtitle: Text("Bottom Navigation Practice"),
          leading: CircleAvatar(child: Icon(Icons.accessibility_sharp),),
          trailing: Icon(Icons.access_time_filled),
          onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => BottomNavigationPractice()));
          },
        ),
        ListTile(
          title: Text("TabBar Practice"),
          subtitle: Text("TabBar Practice"),
          leading: CircleAvatar(child: Icon(Icons.accessibility_sharp),),
          trailing: Icon(Icons.access_time_filled),
          onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => TabBarPractice()));
          },
        ),
        ListTile(
          title: Text("SliverAppBar Practice"),
          subtitle: Text("SliverAppBar Practice"),
          leading: CircleAvatar(child: Icon(Icons.accessibility_sharp),),
          trailing: Icon(Icons.access_time_filled),
          onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => SliverAppBarPractice()));
          },
        ),
        ListTile(
          title: Text("Provider Practice"),
          subtitle: Text("Provider Practice"),
          leading: CircleAvatar(child: Icon(Icons.accessibility_sharp),),
          trailing: Icon(Icons.access_time_filled),
          onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProviderPractice()));
          },
        ),
        ListTile(
          title: Text("ImagePicker Practice"),
          subtitle: Text("ImagePicker Practice"),
          leading: CircleAvatar(child: Icon(Icons.accessibility_sharp),),
          trailing: Icon(Icons.access_time_filled),
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ImagePickerPractice()));
          },
        ),
      ]),
    );
  }
}

class ContainerPractice extends StatelessWidget {
  const ContainerPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.adb),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        body: ListView(children: [
          Column(children: [
            Container(
              height: (MediaQuery.of(context).size.height) / 5,
              width: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.blue),
              child: Text(
                "Hello Flutter",
                style:
                    TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
                textDirection: TextDirection.ltr,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 250,
              width: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.blue),
              child: Text(
                "Hello Flutter",
                style:
                    TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
                textDirection: TextDirection.ltr,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 250,
              width: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.blue),
              child: Text(
                "Hello Flutter",
                style:
                    TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
                textDirection: TextDirection.ltr,
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}

class StackPractice extends StatelessWidget {
  const StackPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width / 2,
                color: Colors.orange,
              ),
              Positioned(
                  right: -60,
                  child: CircleAvatar(
                    radius: 60,
                  )),
              Positioned(
                  left: -60,
                  child: CircleAvatar(
                    radius: 60,
                  )),
              Positioned(
                  top: -60,
                  child: CircleAvatar(
                    radius: 60,
                  )),
              Positioned(
                  bottom: -60,
                  child: CircleAvatar(
                    radius: 60,
                  )),
              Positioned(
                  child: CircleAvatar(
                radius: 60,
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class ImagePractice extends StatelessWidget {
  const ImagePractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.adb),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        body: ListView(
          children:[
            Image.asset("images/afsana.jpg"),
            SizedBox(height: 20,),
            Image.asset("images/mim.jpg"),
            SizedBox(height: 20,),
            Image.network("https://scontent.fdac24-3.fna.fbcdn.net/v/t39.30808-6/365148983_112784805238922_3601890298568625162_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeE4sgxfZFVZft2QoqjeEUADZKyJRmOC1jJkrIlGY4LWMivt1OfEbyUn2xASP80RNV80qvDa3NxqjpDDIaJyQkcx&_nc_ohc=kfEh5o54vWkAX_Z4-my&_nc_ht=scontent.fdac24-3.fna&oh=00_AfBUgCFmWb5mj7zWQFs_RfAdCTE3zzjFG2-PvBvwhQkapg&oe=64D2A3FB")
          ]
        ),
      ),
    );
  }
}

class TinyTidbits extends StatelessWidget {
  const TinyTidbits({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.adb),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        body: ListView(
            children:[
              Image.network("https://scontent.fdac24-3.fna.fbcdn.net/v/t39.30808-6/363415084_106736189177117_127728043803838265_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHRCpzrzAMaTRWFPYcYMoJFX-XRFSYzmAJf5dEVJjOYAi0r9jTWvXbLrK6nfGJiIQLlySrJHzXuPwiIxUnMCAj0&_nc_ohc=oXJNtI1SssEAX_Z3Cch&_nc_ht=scontent.fdac24-3.fna&oh=00_AfBTRGFjrLS7Y4GxrO2HamNJN4BDPdbsi-dHmyyKWbUI9w&oe=64D2814A"),
              SizedBox(height: 20,),
              Image.network("https://scontent.fdac24-3.fna.fbcdn.net/v/t39.30808-6/365148983_112784805238922_3601890298568625162_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeE4sgxfZFVZft2QoqjeEUADZKyJRmOC1jJkrIlGY4LWMivt1OfEbyUn2xASP80RNV80qvDa3NxqjpDDIaJyQkcx&_nc_ohc=kfEh5o54vWkAX_Z4-my&_nc_ht=scontent.fdac24-3.fna&oh=00_AfBUgCFmWb5mj7zWQFs_RfAdCTE3zzjFG2-PvBvwhQkapg&oe=64D2A3FB"),
              SizedBox(height: 20,),
              Image.network("https://scontent.fdac24-3.fna.fbcdn.net/v/t39.30808-6/361670683_106736345843768_1138481500374958908_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeHNTY-n8_XQ8WdiHMYsNvZklrPstSAUXQ6Ws-y1IBRdDs0SsSw9-iNshZWJRYkvnDhBg8rteRB425dtlfNi5ewo&_nc_ohc=qM_2_fJ7IKkAX9wA_Dk&_nc_ht=scontent.fdac24-3.fna&oh=00_AfCkIyDDBaS62bOPYCEvhETbf2pUNZvZablzMU04yHquBA&oe=64D1B6B1"),
              SizedBox(height: 20,),
              Image.network("https://scontent.fdac24-3.fna.fbcdn.net/v/t39.30808-6/363843719_108104425706960_2556608333360836755_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeGyIHZxKRWBQol-cbiSibhumotcTkMqs1Gai1xOQyqzUVjq6mzfInUOkgC2tCWEkG9sRYU65L4HS_JfZEuiAcKl&_nc_ohc=swAeqQBYpEwAX_MNVhz&_nc_ht=scontent.fdac24-3.fna&oh=00_AfAITVAOb4_0D4JNsl2BQPOFikTtgy-u9dLpL3iYBd5U3A&oe=64D23E03"),
              SizedBox(height: 20,),
              Image.network("https://scontent.fdac24-2.fna.fbcdn.net/v/t39.30808-6/362230000_108461605671242_5187110903151437712_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeGR5EfBDzFWDZBSLLODsvs1qdZ1z5t81v2p1nXPm3zW_QBvf831r0YqAT0hETKgt8QIfo87Mt34eM7tzsPwoENR&_nc_ohc=mwezkvn0vc8AX9y6YNF&_nc_ht=scontent.fdac24-2.fna&oh=00_AfDymbOTap6dc4Vy0gn6NyhLwYAPgvQW2B-AryJTl6teRw&oe=64D1A525"),
              SizedBox(height: 20,),
              Image.network("https://scontent.fdac24-3.fna.fbcdn.net/v/t39.30808-6/363387782_109085108942225_7443560000185740081_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeHDpNPnac3v0-4foRU81UHMoizha7W4swOiLOFrtbizA08i9T--5XOAqt2SoUdOBTEjbevMq2_ewA_s1Qoeilqk&_nc_ohc=6rOPQC9z05IAX8B2BMd&_nc_ht=scontent.fdac24-3.fna&oh=00_AfAakzqWRlCAjRCCyImuagwCEDa-sSHMVtFtf6T75VN71w&oe=64D1FE7D"),
              SizedBox(height: 20,),
              Image.network("https://scontent.fdac24-2.fna.fbcdn.net/v/t39.30808-6/363329963_109288965588506_8955552610391188952_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeHl5ag1YoqHeQ5PLV1u8suoOmjgqu3wcpg6aOCq7fBymLIzXITK-stA7gbr0rP-J-hCM4fmIAYJaOYjYn2Jkk1f&_nc_ohc=5glSUsVtgA4AX_jVogo&_nc_ht=scontent.fdac24-2.fna&oh=00_AfBNlpeeP2Jz0t5T4bS0Tm18UEh3yeEURAWtB6AZJCDc3A&oe=64D1B99B"),
              SizedBox(height: 20,),
              Image.network("https://scontent.fdac24-3.fna.fbcdn.net/v/t39.30808-6/363424256_109968892187180_2689695893713688625_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeHTX3aXWe7RI5kkmTX5uDRRdxzuqdsuH7F3HO6p2y4fsfsmeo7jfcTfxxUPksJctFDGIpY_NZCXllqz33zVKqk5&_nc_ohc=6T1OYEo2id0AX_n8wHc&_nc_ht=scontent.fdac24-3.fna&oh=00_AfDUXwY_tZ9OHQuqjd57p15fZFnHEdkpUb5bg9sC1ShwmA&oe=64D2A17C"),
              SizedBox(height: 20,),
              Image.network("https://scontent.fdac24-3.fna.fbcdn.net/v/t39.30808-6/364633964_110267628823973_8316089678182044063_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeH2l9JEF9NfexR492PAXZUDnDLgFbrrZpycMuAVuutmnAxSHgBmmTazLN24yeDHYMjQ5SDLROWR9Xuar67dfU0G&_nc_ohc=rt3YSAABq84AX9ygvNX&_nc_ht=scontent.fdac24-3.fna&oh=00_AfD8A9dbfAw8gHog-5iOHyA9q205x0de4ZFwNI2mdAs-ow&oe=64D2E2AA"),
              SizedBox(height: 20,),
              Image.network("https://scontent.fdac24-2.fna.fbcdn.net/v/t39.30808-6/364740782_110326625484740_13962733012369455_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeHwfBZnCAHouOLY-Q0Mkcnylg98fItfFNaWD3x8i18U1heL115R9ZNCZ7wteTKaVWfQQhUCPaTLtMWDhbVfYKU9&_nc_ohc=w2q7fUQdvI4AX-1xumo&_nc_ht=scontent.fdac24-2.fna&oh=00_AfBReLZLCfBQfbE5KhOswioM4U7zzBI-bykYDUlGnLEArQ&oe=64D2406E"),
              SizedBox(height: 20,),
              Image.network("https://scontent.fdac24-2.fna.fbcdn.net/v/t39.30808-6/363341093_110618805455522_6830008605574428407_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFFiDEHzXhxb1eOc-b7RCG60jNITiOP3HDSM0hOI4_ccIDzjalrr79rEEDdJN5Y_svtB2x8SHydLG1B4ohDey5J&_nc_ohc=fmsWSx7Qv4YAX9nsnhK&_nc_ht=scontent.fdac24-2.fna&oh=00_AfAaqv_el7GJryfqSgESRiLxm7yX9qjqxVxC9VRt8URPTQ&oe=64D14C70"),
              SizedBox(height: 20,),
              Image.network("https://scontent.fdac24-2.fna.fbcdn.net/v/t39.30808-6/363339729_110956772088392_4787902007336963798_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFkCKzGJikv3NUOFjikd2un9__7xGe_l9P3__vEZ7-X07_F_gOldJcQq7FEM0xarPzCgSbGAZuIU-3NY1JTc4KT&_nc_ohc=QhR1Dp-B5NIAX-CpmSS&_nc_oc=AQlzTWtspPqiUpYmlagBgQt6cSypAffX8g9_VJSGLDBBJzoamXXbSuAs8DfesRjqaRY&_nc_ht=scontent.fdac24-2.fna&oh=00_AfAEncxnysVqrfxhN1mmY9u1BBNDuWOI2BdxCOZQbLuEpA&oe=64D1F083"),
              SizedBox(height: 20,),
              Image.network("https://scontent.fdac24-2.fna.fbcdn.net/v/t39.30808-6/364789542_111212225396180_5198235353597142159_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=dd63ad&_nc_eui2=AeFERGiY1XExV0pt2t9cbwSMkwYYpUC99P2TBhilQL30_eN_gZu8jMQ9gTT9pO45ZkHrgpbHAdEJ9Fgt2If04gFa&_nc_ohc=ZjmtJARUGM4AX-2_DMM&_nc_ht=scontent.fdac24-2.fna&oh=00_AfARtNzOGw5kZvAqmt6cHfLoj9Tg44Uc5eK-b0dlbgUF3w&oe=64D24942"),
              SizedBox(height: 20,),
              Image.network("https://scontent.fdac24-2.fna.fbcdn.net/v/t39.30808-6/364080614_113997861784283_8856472276148998279_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeH1yyKj0xZJZTGDE48TJnQgetz0VvlBXy163PRW-UFfLaNXzfhZuSbOwSrbaRFg5WB6DjJPmTRO-X0axOOa0_wI&_nc_ohc=Gx_TMTULFHIAX-Zl4Xf&_nc_ht=scontent.fdac24-2.fna&oh=00_AfCBSManzsFQrY5TO6nK17y87fHLHg-7keRluVsHTncVcw&oe=64D2AA6D"),
              SizedBox(height: 20,),
              Image.network("https://scontent.fdac24-2.fna.fbcdn.net/v/t39.30808-6/364781462_112043491979720_3199596249135061609_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeEYlERMWvTCCqsJ3j155d8Sgy6L2YtpCpODLovZi2kKk9IkOAzySi_FUC1HiYruKLOczV6j_5THFKg9QD0nsOyl&_nc_ohc=XuKbtiw1qPwAX_xFmag&_nc_ht=scontent.fdac24-2.fna&oh=00_AfCMvulIazKUlQ_SbqIsH6OqE9stvqFfr5yWsJq2WZwoTA&oe=64D26386"),
              SizedBox(height: 20,),
              Image.network("https://scontent.fdac24-2.fna.fbcdn.net/v/t39.30808-6/365198778_112190651965004_8859880423967546088_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeGf3pyZyECZd7MmrSh11udwbOsPsaoVRF1s6w-xqhVEXT1D550Haqvnq2SynAXgUbXwWgpcyQeTjdar5ppVsAPE&_nc_ohc=EPbis3AcJw4AX9w45xQ&_nc_ht=scontent.fdac24-2.fna&oh=00_AfALEWdVkTuA53xfhcIVBENvAbulQ5xO-jiQwocC_T1WwQ&oe=64D2458E"),

            ]
        ),
      ),
    );
  }
}

class LiquidSwipePractice extends StatelessWidget {
   LiquidSwipePractice({super.key});

  final pages = [
    Container(color: Colors.deepOrange,),
    Container(color: Colors.cyan),
    Container(color: Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => LiquidSwipe(pages: pages)

        ),

    );
  }
}

class CardGridViewPractice extends StatelessWidget {
  const CardGridViewPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Card(
            elevation: 10,
            color: Colors.deepOrange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40))
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,

                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.orange,

                    child: Center(child: Text("1"),),
                  ),Container(
                    height: 200,
                    width: 200,
                    color: Colors.orange,
                  ),Container(
                    height: 200,
                    width: 200,
                    color: Colors.orange,
                  ),Container(
                    height: 200,
                    width: 200,
                    color: Colors.orange,
                  ),Container(
                    height: 200,
                    width: 200,
                    color: Colors.orange,
                  ),Container(
                    height: 200,
                    width: 200,
                    color: Colors.orange,
                  ),Container(
                    height: 200,
                    width: 200,
                    color: Colors.orange,
                  ),Container(
                    height: 200,
                    width: 200,
                    color: Colors.orange,
                  ),Container(
                    height: 200,
                    width: 200,
                    color: Colors.orange,
                  ),
                ]
              ),
            ),
          ),

        ),
      ),
    );
  }
}

class ExpandedWidgetPractice extends StatelessWidget {
  const ExpandedWidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 2,
                child: MyApp()),
            Expanded(
              flex: 1,
                child: Container(
              color: Colors.blueAccent,
            )),
            Expanded(
              flex: 1,
                child: Container(
              color: Colors.cyanAccent,
            )),

          ],
        ),
      ),
    );
  }
}

class PageViewPractice extends StatelessWidget {
   PageViewPractice({super.key});

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

class BottomNavigationPractice extends StatefulWidget {
  const BottomNavigationPractice({super.key});

  @override
  State<BottomNavigationPractice> createState() => _BottomNavigationPracticeState();
}

class _BottomNavigationPracticeState extends State<BottomNavigationPractice> {
  var index=0;
  final pages=[
    Page1(),
    Page2(),
    NavPageView()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.cyanAccent,
          currentIndex: index,

          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),

            ),
            BottomNavigationBarItem(
                label: "Notifications",
              icon: Icon(Icons.notifications),

            ),
            BottomNavigationBarItem(
                label: "Friends",
              icon: Icon(Icons.face),

            ),
          ],
          onTap: (ind){
            setState(() {
              index=ind;
            });
          },
        ),
        body: pages[index]
      ),
    );
  }
}

class TabBarPractice extends StatelessWidget {
  const TabBarPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.camera),),
                    Tab(icon: Icon(Icons.call),)
                  ]

            ),
          ),
          body: TabBarView(
            children: [
              Page1(),
              Page2()
            ],
          ),
        ),
      ),
    );
  }
}

class SliverAppBarPractice extends StatefulWidget {
  const SliverAppBarPractice({super.key});

  @override
  State<SliverAppBarPractice> createState() => _SliverAppBarPracticeState();
}

class _SliverAppBarPracticeState extends State<SliverAppBarPractice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              //backgroundColor: Colors.deepOrange,
              toolbarHeight: 30,
              expandedHeight: 80,
              collapsedHeight: 40,
              flexibleSpace: FlexibleSpaceBar(
               // centerTitle: false,
                background: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.green,Colors.orange]
                    )
                  ),
                ),
                titlePadding: EdgeInsets.all(0.5),
                title: Text("Sliver app bar"),
              ),
            ),
            SliverList(delegate: SliverChildListDelegate([

              addListTile("hello", "sliver"),
              addListTile("hello", "sliver"),
              addListTile("hello", "sliver"),
              addListTile("hello", "sliver"),
              addListTile("hello", "sliver"),
              addListTile("hello", "sliver"),
              addListTile("hello", "sliver"),
              addListTile("hello", "sliver"),
              addListTile("hello", "sliver"),
              addListTile("hello", "sliver"),
            ]))
          ],
        ),
      ),
    );
  }
}

Widget addListTile(
    String name, String details
    ){
return ListTile(
  title: Text(name),
  subtitle: Text(details),
  leading: CircleAvatar(
    child: Text(name[0]),
  ),
  trailing: Icon(Icons.adb),
);
}

class ProviderPractice extends StatefulWidget {
  const ProviderPractice({super.key});

  @override
  State<ProviderPractice> createState() => _ProviderPracticeState();
}

class _ProviderPracticeState extends State<ProviderPractice> {
  @override
  Widget build(BuildContext context) {
    final providerdata= Provider.of<ProviderDataClass>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(providerdata.value.toString()),
              ElevatedButton(
                onPressed: (){
                 // providerdata.Increment();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProviderMain()));
                }, child: Text('Next Page'),
              ),
            ],
          ),
        ),
      ),
    );

  }
}

class ImagePickerPractice extends StatefulWidget {
  const ImagePickerPractice({super.key});

  @override
  State<ImagePickerPractice> createState() => _ImagePickerPracticeState();
}

class _ImagePickerPracticeState extends State<ImagePickerPractice> {
     File? _image;
  // Future <void> TakeImage() async{
  //   XFile? image=await ImagePicker().pickImage(source: ImageSource.camera);
  //   setState(() {
  //     _image= File(image!.path);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              color: Colors.deepOrange,
             // child: _image == null ? Center(child: Text('No Image selected')) : Image.file(_image!) ,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    heroTag: "btn1",
                  child: Icon(Icons.camera),
                    onPressed:() async {
                    //TakeImage();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> CameraPage()));
                    }
                ),
                SizedBox(width: 50,),
                FloatingActionButton(
                    heroTag: "btn2",
                    child: Icon(Icons.upload_file),
                    onPressed: null)
              ],
            )
          ],
        ),
      ),
    );
  }
}



class MyAppnew extends StatelessWidget {
  const MyAppnew({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
