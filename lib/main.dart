import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portifolio/views/portifolio/portifolio_view.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Vinícius Diogo | Portifolio",
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: PortifolioView());
  }
}
