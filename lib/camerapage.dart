import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  File? _image;
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
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),color: Colors.blue,
              ),
              child:
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: _image == null
                      ? Center(child: Text('No Image selected'))
                      : Image.file(_image!,fit: BoxFit.fill),
                ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    heroTag: "btn1",
                    child: Icon(Icons.camera),
                    onPressed: () async {
                      //TakeImage();
                      final image = await ImagePicker().pickImage(
                          source: ImageSource.camera, imageQuality: 90);
                      setState(() {
                        _image = File(image!.path);
                      });
                    }
                    ),
                SizedBox(
                  width: 50,
                ),
                FloatingActionButton(
                    heroTag: "btn2",
                    child: Icon(Icons.upload_file),
                    onPressed: () async {
                      final image = await ImagePicker().pickImage(
                          source: ImageSource.gallery, imageQuality: 90);
                      setState(() {
                        _image = File(image!.path);
                      });
                    }
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
