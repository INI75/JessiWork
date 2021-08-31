import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Verify extends StatelessWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(35, 35, 38, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(35, 35, 38, 1),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Verification Request',
                style: GoogleFonts.openSans(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 270,
                child: Row(
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
                            ' requested information access',
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.openSans(
                            fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Item',
                      style: GoogleFonts.openSans(
                          fontSize: 12, color: Colors.white),
                    ),
                    Text(
                      'Status',
                      style: GoogleFonts.openSans(
                          fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 300,
                child: ListView(
                  children: [
                    Block(
                        title: 'Job',
                        heading: 'Pharmacetical Science Specialist',
                        company: 'Hewlett Packard International Corporation' +
                            ' of Industrial Clean Energy',
                        date: '01 Feb 2018 - 01 Feb 2020',
                        docType: 'Company Letter'),
                    Block(
                        title: 'References',
                        heading: 'Nathan Schmid',
                        company: 'Hewlett Packard International' +
                            ' Corporation of industrial Clean Energy',
                        date: 'Issued by 01 Feb 2020',
                        docType: 'Recommedation'),
                    Block(
                        title: 'Salary',
                        heading: '\$10,000 - \$50,000',
                        company: 'Softkodes',
                        date: '20-1-2021',
                        docType: 'Check'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      //
      bottomNavigationBar: Container(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 290,
              child: Text(
                'The item will be released immediately' +
                    ' to Victor once it’s verified.',
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  color: Color.fromRGBO(225, 225, 225, 1),
                ),
                overflow: TextOverflow.clip,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Block extends StatelessWidget {
  Block(
      {Key? key,
      required this.title,
      required this.heading,
      required this.company,
      required this.date,
      required this.docType})
      : super(key: key);
  String title;
  String heading;
  String company;
  String date;
  String docType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 55,
              child: Column(
                children: [
                  Container(
                    child: Image.asset('assets/Failed1.png'),
                  ),
                  Text(
                    title,
                    style:
                        GoogleFonts.openSans(color: Colors.white, fontSize: 10),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 35,
            ),
            Container(
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    // overflow: TextOverflow.clip,
                    style:
                        GoogleFonts.openSans(fontSize: 14, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    company,
                    style:
                        GoogleFonts.openSans(fontSize: 10, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    date,
                    style:
                        GoogleFonts.openSans(fontSize: 10, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    docType,
                    style:
                        GoogleFonts.openSans(fontSize: 10, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 80,
              height: 30,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(
                          color: Color.fromRGBO(225, 103, 103, 1),
                        ),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent)),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text(
                  'Verify Now',
                  style: GoogleFonts.openSans(fontSize: 9, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
