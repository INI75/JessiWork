import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Auth3 extends StatelessWidget {
  const Auth3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              height: 500,
              width: 600,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('17/02/2020'),
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(Icons.cancel),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // child: Image.asset('assets/display_picture.png'),
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/display_picture.png',
                              ),
                            ),
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(90),
                                bottomRight: Radius.circular(90),
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(90)),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 150,
                          child: Text(
                            'Victor McComrick has' +
                                ' requested information access 18:28',
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.openSans(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Reason for request: Authentification.' +
                          ' Accept to disclose the below information.',
                      style: GoogleFonts.openSans(fontSize: 13),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Image.asset('assets/job.png'),
                                Text(
                                  'Job',
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Image.asset('assets/salary.png'),
                                Text(
                                  'Salary',
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Image.asset('assets/education1.png'),
                                Text(
                                  'Education',
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.info_outline, size: 18),
                          Container(
                            width: 200,
                            child: Text(
                              'This Verification is sponsored by Victor.' +
                                  'Expire by 22/7/2021.',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.openSans(
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.clip,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: 230,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                  color: Color.fromRGBO(176, 105, 255, 1),
                                ),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(176, 105, 255, 1),
                            )),
                        onPressed: () {
                          Navigator.pushNamed(context, '/verify');
                        },
                        child: Text(
                          'Validation & Give Access',
                          style: GoogleFonts.openSans(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
