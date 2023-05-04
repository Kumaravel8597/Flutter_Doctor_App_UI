import 'package:doctor_app/constants/constants.dart';
import 'package:doctor_app/pages/home1/components/doctor_banner.dart';
import 'package:doctor_app/pages/home1/components/patients_reviews.dart';
import 'package:doctor_app/pages/home1/components/problems_section.dart';
import 'package:flutter/material.dart';

import '../../../constants/icons.dart';
import 'custom_app_bar.dart';
import 'details_list.dart';
import 'doctor_categories.dart';
import 'doctor_consult.dart';
import 'home_header.dart';
import 'preview_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  late AnimationController _ColorAnimationController;

  // ignore: non_constant_identifier_names
  // late AnimationController _TextAnimationController;
  late Animation _colorTween,
      _homeTween,
      _locationTween,
      _iconTween,
      _drawerTween;

  @override
  void initState() {
    _ColorAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    _drawerTween = ColorTween(begin: Colors.transparent, end: Colors.white)
        .animate(_ColorAnimationController);
    _colorTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_ColorAnimationController);
    _homeTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_ColorAnimationController);
    _iconTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_ColorAnimationController);
    _locationTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_ColorAnimationController);
    // _TextAnimationController =
    //     AnimationController(vsync: this, duration: Duration(seconds: 0));

    super.initState();
  }

  bool scrollListener(ScrollNotification scrollInfo) {
    bool scroll = false;
    if (scrollInfo.metrics.axis == Axis.vertical) {
      _ColorAnimationController.animateTo(scrollInfo.metrics.pixels / 200);
      // _TextAnimationController.animateTo(scrollInfo.metrics.pixels);
      return scroll = true;
    }
    return scroll;
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: scrollListener,
      child: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: Stack(children: <Widget>[
              NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (OverscrollIndicatorNotification overscroll) {
                  overscroll.disallowGlow();
                  return true;
                },
                child: SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  child: Column(children: [
                    const HomeHeader(),
                    const SizedBox(height: 20),
                    const DoctorBanner(),
                    const DeatilsList(),
                    ProblemSection(),
                    bannerImage(),
                    const DoctorCategory(),
                    const DoctorConsult(),
                    const PatientReviewSection(),
                    PreviewSection(),
                  ]),
                ),
              ),
              AnimatedAppBar(
                drawerTween: _drawerTween,
                onPressed: () {
                  // scaffoldKey.currentState?.openDrawer();
                },
                colorAnimationController: _ColorAnimationController,
                colorTween: _colorTween,
                headerTween: _homeTween,
                iconTween: _iconTween,
                locationTween: _locationTween,
              )
            ]),
          ),
        ],
      ),
    );
  }

  Widget bannerImage() {
    return Container(
      height: 200,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Color(0xFFF1F1F1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  ImageFiles.Banner2,
                  width: MediaQuery.of(context).size.width / 2,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      ' \nNO.1\n BRAND\n IN INDIA',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF200055),
                          fontFamily: 'Quicksand'),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Container(
                        width: 120,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          gradient: kPrimaryGradientColor,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, -15),
                              blurRadius: 20,
                              color: Color(0xFFDADADA).withOpacity(0.15),
                            ),
                          ],
                          // border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text('Book Now',
                            style: TextStyle(
                              color: Colors.white,
                            ))),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 7),
            Image.asset(ImageFiles.TripleDots, height: 10),
          ],
        ),
      ),
    );
  }
}
