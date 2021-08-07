import 'package:flutter/material.dart';
import 'Pages/main_page.dart';

void main() => runApp(Portofolio());

class Portofolio extends StatefulWidget {
  const Portofolio({Key? key}) : super(key: key);

  @override
  _PortofolioState createState() => _PortofolioState();
}

class _PortofolioState extends State<Portofolio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NullFeel",
      theme: ThemeData.dark(),
      home: MainPage(),
    );
  }
}
