import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:plugin/widget/takepicture_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstcamera = cameras.first;
  // final secondcamera = cameras.last;
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: TakePictureScreen(camera: firstcamera),
      debugShowCheckedModeBanner: false,
    ),
  );

}