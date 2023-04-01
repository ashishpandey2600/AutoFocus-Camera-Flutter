import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';
//List of camera

List<CameraDescription>? cameras;

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras  = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
