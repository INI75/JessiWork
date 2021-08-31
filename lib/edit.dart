import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Edited extends StatefulWidget {
  const Edited({Key? key}) : super(key: key);

  @override
  _EditedState createState() => _EditedState();
}

class _EditedState extends State<Edited> {
  var _current = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = new PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        leading: Icon(Icons.cancel_presentation_outlined),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                  onPressed: () => Navigator.pushNamed(context, '/done'),
                  icon: Icon(Icons.done)))
        ],
        title: Text(
          'Edit Photo',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(10),
        child: Image.asset('assets/certificate2.png'),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.replay_outlined,
              color: Colors.blueGrey,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 50,
              child: Column(
                children: [
                  Icon(
                    Icons.filter_center_focus,
                    color: Colors.orange,
                    size: 30,
                  ),
                  Text(
                    'Scale',
                    style: GoogleFonts.openSans(
                        color: Colors.orange, fontSize: 13),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
