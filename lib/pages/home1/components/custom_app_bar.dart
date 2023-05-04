import 'package:flutter/material.dart';

import '../../../constants/icons.dart';

class AnimatedAppBar extends StatefulWidget {
  AnimationController colorAnimationController;
  Animation colorTween, headerTween, locationTween, iconTween, drawerTween;
  Function onPressed;

  AnimatedAppBar({
    Key? key,
    required this.colorAnimationController,
    required this.onPressed,
    required this.colorTween,
    required this.headerTween,
    required this.iconTween,
    required this.drawerTween,
    required this.locationTween,
  }) : super(key: key);

  @override
  State<AnimatedAppBar> createState() => _AnimatedAppBarState();
}

class _AnimatedAppBarState extends State<AnimatedAppBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: AnimatedBuilder(
        animation: widget.colorAnimationController,
        builder: (context, child) => AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: widget.drawerTween.value,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      ImageFiles.MENU,
                      color: widget.colorTween.value,
                      height: 25,
                      width: 25,
                    )),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageFiles.RoundedHeader),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'DOCTOR - DENTIST',
                        style: TextStyle(
                            fontSize: 12,
                            color: widget.headerTween.value,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand'),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Madurai",
                            style: TextStyle(
                              color: widget.locationTween.value,
                              fontFamily: 'Quicksand',
                              // fontWeight: FontWeight.bold,
                              fontSize: 12,
                            )),
                        WidgetSpan(
                            child: Image.asset(
                          ImageFiles.LOCATION,
                          color: widget.locationTween.value,
                          height: 15,
                          width: 25,
                        ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
