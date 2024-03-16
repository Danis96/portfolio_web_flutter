import 'package:flutter/material.dart';
import 'package:web_portfolio/app/view/home_page/widgets/home_page_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          NavBarCustom(),
        ],
      ),
    );
  }
}
