import 'package:doctor_app/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constants.dart';
import '../pages/home1/home_screen.dart';

enum MenuState { home, favourite, message, profile }

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 7),
        decoration: BoxDecoration(
          gradient: kPrimaryGradientColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.15),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: SafeArea(
            top: false,
            bottom: false,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  flex: 1,
                  child: IconButton(
                    icon: SvgPicture.asset(
                      ImageFiles.Home,
                      // color: MenuState.home == selectedMenu
                      //     ? Colors.black
                      //     : inActiveIconColor,
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, HomeScreen.routeName),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: IconButton(
                    icon: SvgPicture.asset(ImageFiles.WhatsApp),
                    onPressed: () {},
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: IconButton(
                    icon: SvgPicture.asset(ImageFiles.Call),
                    onPressed: () {},
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                      width: 100,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        // gradient:kPrimaryGradientColor,
                        color: Colors.transparent,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, -15),
                            blurRadius: 20,
                            color: Color(0xFFDADADA).withOpacity(0.15),
                          ),
                        ],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text('Book Now',
                          style: TextStyle(
                            color: Colors.white,
                          ))),
                ),
              ],
            )),
      ),
    );
  }
}
