import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            child: Image(
              image: AssetImage('assets/foodback2.png'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                colors: <Color>[
                  Colors.transparent,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black12,
                  Colors.black38,
                  Colors.black54,
                  Colors.black87
                ],
                tileMode: TileMode.mirror,
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 130),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Welcome to Naija Foodie! \n'
                  'Find all the recpies to your favourite Nigerian meals here.',
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, //buttoncolor
                  onPrimary: Colors.black, //textcolor
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  minimumSize: Size(210.0, 60.0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text(
                  'Get Started',
                  style: GoogleFonts.goudyBookletter1911(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
