import 'package:flutter/material.dart';
import 'package:web_portfolio/generated/assets.dart';

import '../../../utils/helpers/navbar_items_list.dart';

class NavBarCustom extends StatelessWidget {
  const NavBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_buildLogo(context), _buildNavBarItems(context)],
      ),
    );
  }
}

Widget _buildLogo(BuildContext context) {
  return SizedBox(child: Image.asset(Assets.assetsLogo));
}

Widget _buildNavBarItems(BuildContext context) {
  return Row(children: navBarItemsList(context).toList());
}

Widget buildNavBarItem(BuildContext context, title, {Function? onTap}) {
  return GestureDetector(
    onTap: () {
      if (onTap != null) {
        onTap();
      }
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400)),
    ),
  );
}
