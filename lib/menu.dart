import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
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
            color: Colors.grey.withOpacity(0.9),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 10, 0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Builder(builder: (context) {
                  return IconButton(
                    icon: Icon(Icons.arrow_back_ios_rounded),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  );
                }),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Menu',
                        style: GoogleFonts.bubblerOne(
                            fontStyle: FontStyle.values[0],
                            fontWeight: FontWeight.w900,
                            fontSize: 25.0,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 3,
                      color: Colors.black.withOpacity(0.7),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    RecipeOptions(
                      pic: 'assets/food1.png',
                      text1: 'Hausa Diet',
                      text2: 'Tuwo, kuli, Shinkafa',
                      route: '/hausa',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RecipeOptions(
                      pic: 'assets/foodback2.png',
                      text1: 'Igbo Diet',
                      text2: 'Egusi, Dalu, Elebe',
                      route: '/igbo',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RecipeOptions(
                      pic: 'assets/food1.png',
                      text1: 'Yoruba Diet',
                      text2: 'Efo riro, Gbegiri, Ewedu',
                      route: '/yoruba',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RecipeOptions(
                      pic: 'assets/foodback2.png',
                      text1: 'South south Diet',
                      text2: 'Afang, Afam, Edikikong',
                      route: '/south_south',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RecipeOptions(
                      pic: 'assets/food1.png',
                      text1: 'Warri/Edo Diet',
                      text2: 'Kpoko Garri, Starch, Banga',
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RecipeOptions extends StatelessWidget {
  final String pic;
  final String text1;
  final String text2;
  final route;

  const RecipeOptions({Key key, this.pic, this.text1, this.text2, this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 5),
            )
          ],
          border: Border.all(color: Colors.blueGrey, width: 0.05),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Image.asset(
                    pic,
                    scale: 17,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    text1,
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.values[0],
                        fontWeight: FontWeight.w900,
                        fontSize: 15.0),
                  ),
                ),
                Text(
                  text2,
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.values[0],
                      // fontWeight: FontWeight.bold,
                      fontSize: 10.0),
                ),
              ],
            ),
            Container(
              child: Align(
                alignment: Alignment.topCenter,
                child: IconButton(
                  icon: Icon(Icons.food_bank_outlined),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
