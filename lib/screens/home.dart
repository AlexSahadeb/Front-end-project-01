import 'package:flutter/material.dart';
import 'package:font_end_project/responsive.dart';
import 'package:font_end_project/screens/desktop.dart';
import 'package:font_end_project/screens/mobile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Responsive(
            mobile: MobileScreen(),
            desktop: DesktopScreen(),
          ),
        ),
      ),
    );
  }
}
