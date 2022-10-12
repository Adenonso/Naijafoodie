import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Description extends StatelessWidget {
  final String route;
  final String productname;
  final sroute;
  final scolor;
  final num;
  final String duration;
  final String ingredients;
  final String procedure;

  const Description(
      {Key key,
      this.route,
      this.productname,
      this.sroute,
      this.scolor,
      this.num,
      this.duration,
      this.ingredients,
      this.procedure})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.80,
        height: MediaQuery.of(context).size.height * 0.80,
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
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 23,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(5)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        num,
                        style: TextStyle(color: Colors.white70, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    //productname
                    child: Text(
                      productname,
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(110.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      // spreadRadius: 30,
                      blurRadius: 20,
                      offset: Offset(0, 5),
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
            SliverToBoxAdapter(
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
                            '$duration',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 5,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    child: Text(
                      ingredients,
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    child: Text(
                      procedure,
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
