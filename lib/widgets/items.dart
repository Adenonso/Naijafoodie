import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Items extends StatelessWidget {
  final String route;
  final String tribe;
  final String productname;
  final sroute;
  final scolor;

  const Items(
      {Key key,
      this.route,
      this.productname,
      this.sroute,
      this.scolor,
      this.tribe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.60,
        height: MediaQuery.of(context).size.height * 0.70,
        decoration: BoxDecoration(
          color: scolor,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 2),
            )
          ],
          border: Border.all(color: Colors.blueGrey, width: 0.5),
        ),
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(120.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 17,
                      offset: Offset(0, 10),
                    )
                  ],
                ),
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: IconButton(
                  icon: Image.asset(
                    sroute,
                  ),
                  iconSize: 170,
                  onPressed: () {
                    Navigator.pushNamed(context, route);
                  },
                ),
              ),
            ),
            // SizedBox(height: 1,),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    child: Text(
                      productname,
                      style: GoogleFonts.zeyada(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    'Tribe: $tribe',
                    style: GoogleFonts.comicNeue(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: IconButton(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(0),
                              icon: Icon(
                                Icons.access_time_sharp,
                                size: 25,
                              ),
                              onPressed: () {},
                              color: Colors.white70),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            'Less than 2hrs',
                            style: GoogleFonts.zeyada(color: Colors.white70),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
