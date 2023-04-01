
import 'package:camera/camera.dart';
import 'package:camerause/main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late CameraController cameraController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cameraController = CameraController(cameras[0], ResolutionPreset.high);

    cameraController.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CameraPreview(cameraController),
    );
  }
}
