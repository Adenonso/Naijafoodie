import 'package:flutter/material.dart';
import 'home.dart';
import 'menu.dart';
import 'loading.dart';
import 'tribe/hausa.dart';
import 'tribe/igbo.dart';
import 'tribe/yoruba.dart';
import 'tribe/south_south.dart';
import 'about.dart';
import 'privacy.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/menu': (context) => Menu(),
      '/hausa': (context) => Hausa(),
      '/igbo': (context) => Igbo(),
      '/yoruba': (context) => Yoruba(),
      '/south_south': (context) => South_south(),
      '/about': (context) => About(),
      '/privacy': (context) => Privacy()
    },
  ));
}
