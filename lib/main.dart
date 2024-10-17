import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import halaman awal

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Ambil daftar kamera yang tersedia
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(MyApp(camera: firstCamera));
}

class MyApp extends StatelessWidget {
  final CameraDescription camera;

  const MyApp({Key? key, required this.camera}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camera App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(camera: camera), // Mulai dari halaman awal
    );
  }
}
