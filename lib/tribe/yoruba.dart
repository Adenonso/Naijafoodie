import 'package:flutter/material.dart';
import 'description.dart';
import 'package:google_fonts/google_fonts.dart';

class Yoruba extends StatefulWidget {
  @override
  State<Yoruba> createState() => _YorubaState();
}

class _YorubaState extends State<Yoruba> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 10, 0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20)),
                child: Builder(builder: (context) {
                  return IconButton(
                    icon: Icon(Icons.arrow_back_ios_rounded),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, '/menu');
                    },
                  );
                }),
              ),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Yoruba Diets',
                    style: GoogleFonts.bubblerOne(
                        fontStyle: FontStyle.values[0],
                        fontWeight: FontWeight.w900,
                        fontSize: 25.0),
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
                  height: 10,
                ),
                Container(
                  // margin: EdgeInsets.all(5),
                  height: size.height * .80,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Gbegiri
                        Description(
                          num: '1',
                          scolor: Colors.red.shade200,
                          sroute: 'assets/foodback.png',
                          productname: 'Gbegiri',
                          route: '',
                          duration: 'less than 2hr',
                          ingredients: 'Ingredients: \n'
                              '1. Cat fish, smoked fish, pomo.\n'
                              '2. Sliced yam pieces.\n'
                              '3. Utazi leaves.\n'
                              '4. Seasoning cubes(popularly known as maggi).\n'
                              '5. Crayfish.\n'
                              '6. Local seasoning\n'
                              '7. Dried grind pepper.\n'
                              '8. Salt, onions.\n',
                          procedure: 'Procedures: \n'
                              '1. Boil your yam and pound to smooth form.\n'
                              '2. Crush the seasoning cubes into the steaming pot of fish.\n'
                              '3. Add water(depends on the quantity being cooked).\n'
                              '4. Add the sliced(tiny bits) of onions, the cray fish'
                              'and other seasoning ingredients.\n'
                              '5. Add the pounded yam.\n'
                              '6. Allow to boil till yam has blended perfectly.\n'
                              '7. Add salt and stir.\n'
                              '8. Allow to boil for a short period.\n'
                              '9. Your naija food is ready!!\n',
                        ),
                        //ofe-oha
                        Description(
                          num: '2',
                          scolor: Colors.amber[700],
                          sroute: 'assets/foodback2.png',
                          productname: 'Gbegiri',
                          route: '',
                          duration: 'less than 1hr30mins',
                          ingredients: 'Ingredients: \n'
                              '1. Smoked, stock fish.\n'
                              '2. Beef, chicken.\n'
                              '3. Snail, periwinkle.\n'
                              '4. Cray fish, Ponmo.\n'
                              '5. Seasonings.\n'
                              '6. Palm oil.\n'
                              '7. Uziza leaves\n'
                              '8. Oha leaves.\n'
                              '9. Salt.\n',
                          procedure: 'Procedures: \n'
                              '1. Wash your meat.\n'
                              '2. Fry your oil for 3mins.\n'
                              '3. Add onions and cry fish.\n'
                              '4. Boil your efo to steam point.\n'
                              '5. Add your spices and allow to boil.\n'
                              '6. Add your meat/fish.\n',
                        ),
                        //Nkwobi
                        Description(
                          num: '3',
                          scolor: Colors.teal[500],
                          sroute: 'assets/foodback.png',
                          productname: 'Nkwobi',
                          route: '',
                          duration: 'less than 1hr30mins',
                          ingredients: 'Ingredients: \n'
                              '1. Goat meat.\n'
                              '2. Salt, seasoning cubes.\n'
                              '3. Pepper.\n'
                              '4. .\n'
                              '5. .\n'
                              '6. .\n',
                          procedure: 'Procedures: \n'
                              '1. Wash your meat.\n'
                              '2. Fry your oil for 3mins.\n'
                              '3. Add onions and cry fish.\n'
                              '4. Boil your efo to steam point.\n'
                              '5. Add your spices and allow to boil.\n'
                              '6. Add your meat/fish.\n',
                        ),
                        //Ofe-olubu
                        Description(
                          num: '4',
                          scolor: Colors.yellow[700],
                          sroute: 'assets/foodback2.png',
                          productname: 'Ofe-olubu',
                          route: '',
                          duration: '60',
                          ingredients: 'Ingredients: \n'
                              '1. Dry fish.\n'
                              '2. Meat.\n'
                              '3. Spices.\n'
                              '4. Boil your efo to steam point.\n'
                              '5. Add your spices and allow to boil.\n'
                              '6. Okporoko(dried pepper).\n',
                          procedure: 'Procedures: \n'
                              '1. Wash your meat.\n'
                              '2. Fry your oil for 3mins.\n'
                              '3. Add onions and cry fish.\n'
                              '4. Boil your efo to steam point.\n'
                              '5. Add your spices and allow to boil.\n'
                              '6. Add your meat/fish.\n',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
