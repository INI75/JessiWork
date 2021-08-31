import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jessi/FirstPage.dart';
import 'package:jessi/authPage1.dart';
import 'package:jessi/authPage2.dart';
import 'package:jessi/authPage3.dart';
import 'package:jessi/camera.dart';
import 'package:jessi/done.dart';
import 'package:jessi/edit.dart';
import 'package:jessi/verification.dart';

late List<CameraDescription> camera;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  camera = await availableCameras();
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Entry(),
      routes: {
        '/upload': (context) => Uploaded(),
        '/edited': (context) => Edited(),
        '/done': (context) => Done(),
        '/auth': (context) => Auth1(),
        '/auth2': (context) => Auth2(),
        '/auth3': (context) => Auth3(),
        '/verify': (context) => Verify()
      },
    );
  }
}
