import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'camera_screen.dart'; // Import halaman kamera
import 'package:animated_widgets/animated_widgets.dart'; // Import plugin animasi

class HomeScreen extends StatelessWidget {
  final CameraDescription camera;

  const HomeScreen({Key? key, required this.camera}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to OCR App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TranslationAnimatedWidget(
              enabled: true,
              values: [Offset(0, 100), Offset(0, 0)],
              child: Text(
                'Welcome to the Camera App!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CameraScreen(camera: camera)),
                );
              },
              child: Text('Open Camera'),
            ),
          ],
        ),
      ),
    );
  }
}