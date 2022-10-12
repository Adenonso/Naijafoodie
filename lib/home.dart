import 'package:flutter/material.dart';
import 'widgets/items.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      // drawerEdgeDragWidth: 250,
      drawerScrimColor: Colors.black.withOpacity(0.5),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 1),
                  colors: <Color>[
                    Colors.teal,
                    Colors.teal.shade600,
                    Colors.teal.shade300,
                    Colors.amber.shade200,
                    Colors.amber
                  ],
                  tileMode: TileMode.repeated,
                ),
              ),
              child: Text(
                'NaijaFoodie',
                style: GoogleFonts.zeyada(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            ExpansionTile(
              title: Text(
                'Contact us',
                style: TextStyle(color: Colors.brown),
              ),
              children: [
                ListTile(
                    leading: Icon(Icons.mail),
                    title: Text('balogundaniel2001@yahoo.com')),
                ListTile(
                  leading: Icon(Icons.message_outlined),
                  title: Text('+234(0)701 710 8311'),
                ),
                ListTile(
                  leading: Icon(Icons.location_pin),
                  title: Text('Head Office: 2-3 Branko, Island, Lagos.'),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Your Profile',
                style: TextStyle(color: Colors.brown),
              ),
              children: [
                ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Balogun Daniel')),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Male'),
                ),
                ListTile(
                  leading: Icon(Icons.location_pin),
                  title: Text('Liverpool, United Kingdom'),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.brown),
              ),
              children: [
                ListTile(
                  leading: Icon(Icons.message_outlined),
                  title: Text('Privacy and User Agreement'),
                  onTap: () {
                    Navigator.pushNamed(context, '/privacy');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info_rounded),
                  title: Text('About Us'),
                  onTap: () {
                    Navigator.pushNamed(context, '/about');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            ListTile(
              // leading: Icon(Icons.favorite),
              title: Text('Rate App'),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Container(
          //   width: double.infinity,
          //   height: double.infinity,
          //   decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //       begin: Alignment.topLeft,
          //       end: Alignment(0.8, 1),
          //       colors: <Color>[
          //         Color(0xff1f005c),
          //         Color(0xff5b0060),
          //         Color(0xff870160),
          //         Color(0xffe16b5c),
          //         Color(0xfff39060),
          //         Color(0xffffb56b),
          //         Color(0xff5b0060),
          //       ],
          //       tileMode: TileMode.mirror,
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 52,
                width: 52,
                decoration: BoxDecoration(
                  color: Colors.yellow[700].withOpacity(0.9),
                  shape: BoxShape.circle,
                ),
                child: Builder(builder: (context) {
                  return IconButton(
                    icon: Icon(Icons.menu_open_sharp),
                    color: Colors.teal[800],
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                }),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Colors.grey.shade400),
                  ),
                  Text(
                    'NaijaFoodie',
                    style: GoogleFonts.zeyada(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.teal[800]),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 45,
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          padding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Find recipes or chef',
                                icon: Icon(
                                  Icons.search,
                                  size: 30,
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 53,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.teal[800],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/menu');
                          },
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Builder(builder: (context) {
                                      return IconButton(
                                        icon: Icon(Icons.menu),
                                        color: Colors.white,
                                        onPressed: () {
                                          Navigator.pushNamed(context, '/menu');
                                        },
                                        iconSize: 20,
                                      );
                                    }),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 3),
                                    child: Text(
                                      'Menu',
                                      style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10.0,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'Top Products',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        color: Colors.teal[800]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    // margin: EdgeInsets.all(5),
                    height: size.height * .50,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Items(
                              scolor: Colors.teal[800],
                              sroute: 'assets/foodback.png',
                              productname: 'Efo riro',
                              tribe: 'Yoruba',
                              route: '/yoruba'),
                          Items(
                              scolor: Colors.yellow[700],
                              sroute: 'assets/foodback2.png',
                              productname: 'Gbegiri',
                              tribe: 'Yoruba',
                              route: ''),
                          Items(
                              scolor: Colors.teal[500],
                              sroute: 'assets/foodback.png',
                              productname: 'Egusi Soup',
                              tribe: 'Igbo',
                              route: ''),
                          Items(
                              scolor: Colors.yellow[700],
                              sroute: 'assets/foodback2.png',
                              productname: 'Hausa Jollof',
                              tribe: 'Hausa',
                              route: ''),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    backgroundColor: Colors.yellow[700],
                    foregroundColor: Colors.teal[700],
                    child: IconButton(
                      icon: Icon(
                        Icons.add_circle_outline,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Note()));
                      },
                    ),
                    tooltip: 'add',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Write note',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0,
                        color: Colors.teal[800]),
                  ),
                ],
              )),
            ),
          )
        ],
      ),
    );
  }
}

class Note extends StatefulWidget {
  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 10),
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: MediaQuery.of(context).size.height * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      border: Border.all(color: Colors.blueGrey, width: 0.9),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Write notes....',
                          border: InputBorder.none),
                      maxLines: 500,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(15)),
                child: Builder(builder: (context) {
                  return IconButton(
                    icon: Icon(Icons.home_sharp),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  );
                }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 35, 10, 0),
            child: Align(
              alignment: Alignment.topRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal, //buttoncolor
                      onPrimary: Colors.white, //textcolor
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      minimumSize: Size(40.0, 40.0),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Save',
                      style: GoogleFonts.goudyBookletter1911(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal, //buttoncolor
                      onPrimary: Colors.white, //textcolor
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      minimumSize: Size(40.0, 40.0),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Open',
                      style: GoogleFonts.goudyBookletter1911(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
