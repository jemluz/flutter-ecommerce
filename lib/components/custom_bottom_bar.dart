import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIcon = Color(0xFFB6B6B6);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(.15),
            )
          ]),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/Shop Icon.svg',
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : inActiveIcon,
              ),
              onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
            ),
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/Heart Icon.svg',
                color: MenuState.favorite == selectedMenu
                    ? kPrimaryColor
                    : inActiveIcon,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/Chat bubble Icon.svg',
                color: MenuState.message == selectedMenu
                    ? kPrimaryColor
                    : inActiveIcon,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/User Icon.svg',
                color: MenuState.profile == selectedMenu
                    ? kPrimaryColor
                    : inActiveIcon,
              ),
              onPressed: () => Navigator.pushNamed(context, ProfileScreen.routeName),
            )
          ],
        ),
      ),
    );
  }
}