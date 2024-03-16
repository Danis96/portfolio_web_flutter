import 'package:flutter/material.dart';

import '../../view/home_page/widgets/home_page_nav_bar.dart';

List<Widget> navBarItemsList(BuildContext context) => <Widget>[
      buildNavBarItem(context, 'Home', onTap: () => print('I am on homepage')),
      buildNavBarItem(context, 'About me', onTap: () => print('I am on about me')),
      buildNavBarItem(context, 'Portfolio', onTap: () => print('I am on portfolio')),
      buildNavBarItem(context, 'Contact', onTap: () => print('I am on contact')),
    ];
