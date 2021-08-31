import 'package:flutter/material.dart';

class Uploaded extends StatelessWidget {
  const Uploaded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Center(
            child: Image.asset('assets/certificate.png'),
          ),
          Positioned(
            bottom: 10,
            child: GestureDetector(onTap:  () => Navigator.pushNamed(context, '/edited'),
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(196, 196, 196, 1),
                maxRadius: 30,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  maxRadius: 28,
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(196, 196, 196, 1),
                    maxRadius: 26,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      // bottomNavigationBar: Container(
      //   height: 1,
      //   child: Stack(
      //     children: [
      //       Container(
      //         color: Color.fromRGBO(196, 196, 196, 1),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
