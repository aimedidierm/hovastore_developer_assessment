import 'package:flutter/material.dart';
import 'package:hovastore/screens/mobile/home.dart';
import 'package:hovastore/screens/tablet/home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;

    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;

    return Scaffold(
      body: Row(
        children: [
          if (isDesktop(context)) const DesktopHome(),
          if (isMobile(context)) const MobileHome(),
        ],
      ),
    );
  }
}
