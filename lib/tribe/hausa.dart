import 'package:flutter/material.dart';
import 'description.dart';
import 'package:google_fonts/google_fonts.dart';

class Hausa extends StatefulWidget {
  @override
  _HausaState createState() => _HausaState();
}

class _HausaState extends State<Hausa> {
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
                    'Hausa Diets',
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
                        //Dan Wake
                        Description(
                          num: '1',
                          scolor: Colors.orange,
                          sroute: 'assets/foodback.png',
                          productname: 'Dan Wake',
                          route: '',
                          duration: 'Less than 30mins',
                          ingredients: 'Ingredients: \n'
                              '1. Dan wake flour.\n'
                              '2. Alternatively, ground beans flour/powder.\n'
                              '3. Potash.\n'
                              '4. Bao bao(kuka).\n'
                              '5. Dry pepper, groundnut oil.\n'
                              '6. Tomatoes, cabbage/vegetables.\n'
                              '7. Egg, cucumber, carrots.\n'
                              '8. Stock.\n',
                          procedure: 'Procedures: \n'
                              '1. Mix flour with little water.\n'
                              '2. Allow water in pot to boil.\n'
                              '3. Add small balls of paste into boiling water.\n'
                              '4. Allow to boil for 10mins.\n'
                              '5. Remove from boiling water and rinse in cold water.\n'
                              '6. Allow to cool.\n'
                              '7. Serve with fried veg, dried pepper. boiled egg, cucumber/tomato.\n',
                        ),
                        //Masa
                        Description(
                          num: '2',
                          scolor: Colors.cyanAccent[700],
                          sroute: 'assets/foodback2.png',
                          productname: 'Masa',
                          route: '',
                          duration: 'About 2hr',
                          ingredients: 'Ingredients: \n'
                              '1. Tuwo rice.\n'
                              '2. Sugar.\n'
                              '3. Yeast.\n'
                              '4. Potash.\n'
                              '5. Salt, ground pepper.\n'
                              '6. Vegetable oil.\n',
                          procedure: 'Procedures: \n'
                              '1. Divide tuwo rice into two parts.\n'
                              '2. Wash first part and soak in a bowl with potash.\n'
                              '3. Soak a teaspoon of ground potash in half cup of water.\n'
                              '4. Allow to settle.\n'
                              '5. Pour water part of the mixture, with extra water and soak for 8-10hrs.\n'
                              '6. Wash and boil second part of the tuwo rice till it is very soft.\n'
                              '7. Mash it to pulp.\n'
                              '8. Mix ground rice with the mashed rice.\n'
                              '9. Add sugar and salt.\n'
                              '10. Add a teaspoon of yeast.\n'
                              '11. Stir and allow frothing for 30mins, prevent allowing batter to turn thick.\n'
                              '12. Grease your masa pan with vegetable and scoop your batter into the pan.\n'
                              '13. Allow to cook, then flip upside down to allow other side to also cook.\n',
                        ),
                        //Miyan Geda
                        Description(
                          num: '3',
                          scolor: Colors.black,
                          sroute: 'assets/foodback.png',
                          productname: 'Miyan Geda/Tuwo Shinkafa',
                          route: '',
                          duration: 'Less than 2hrs',
                          ingredients: 'Ingredients: \n'
                              '1. Ground dried groundnut.\n'
                              '2. Beef.\n'
                              '3. Dried fish.\n'
                              '4. Ground crayfish.\n'
                              '5. Half cup of sliced onions.\n'
                              '6. Palm oil.\n'
                              '7. Salt.\n'
                              '8. Daddawa\n'
                              '9. Vegetable oil.\n'
                              '10. Sliced onions.\n'
                              '11. White hibiscus.\n'
                              '12. Seasoning, ginger, garlic.\n',
                          procedure: 'Procedures: \n'
                              '1. Boil your meat with seasoning, and onions.\n'
                              '2. Boil your hibiscus with little potash separately till soft.\n'
                              '3. Wash thoroughly.\n'
                              '4. Wash your dried fish with salty warm water.\n'
                              '5. Wash and cut your onions, blend with tatashe, and pepper.\n'
                              '6. Add blend to boiling meat, with palm oil, daddawa.\n'
                              '7. Allow to boil for some minutes.\n'
                              '8. Add washed dried fish, add water and allow boil.\n'
                              '9. Add groundnut oil and allow to cook for 4mins.\n'
                              '10. Add vegetable, hibiscus, and after sme few minutes, spring onions, spinach.\n'
                              'Your Naija food is ready',
                        ),
                        Description(
                          num: '4',
                          scolor: Colors.yellow[700],
                          sroute: 'assets/foodback2.png',
                          productname: 'Hausa Jollof',
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
