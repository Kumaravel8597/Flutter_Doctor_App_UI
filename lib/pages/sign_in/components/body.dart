import 'package:flutter/material.dart';
import '../../../constants/icons.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration:  BoxDecoration(
                                image: DecorationImage(
                                  image:AssetImage("assets/icons/shawdow.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width:15),
                            Text('DOCTOR - DENTIST',style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,fontFamily:'Quicksand'

                            ), ),
                          ],
                        ),
                        Container(
                          width: 150,
                          height: 150,
                          decoration:  BoxDecoration(
                            image: DecorationImage(
                              image:AssetImage("assets/icons/header.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                "Login",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily:'Quicksand',
                    fontSize: 20,fontWeight: FontWeight.bold
                  // fontWeight: FontWeight.bold,
                ),
              ),
              // SizedBox(height: SizeConfig.screenHeight * 0.08),
              SignForm(),
              // SizedBox(height: SizeConfig.screenHeight * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SocalCard(
                  //   icon: "assets/icons/google-icon.svg",
                  //   press: () {},
                  // ),
                  // SocalCard(
                  //   icon: "assets/icons/facebook-2.svg",
                  //   press: () {},
                  // ),
                  // SocalCard(
                  //   icon: "assets/icons/twitter.svg",
                  //   press: () {},
                  // ),
                ],
              ),
              // SizedBox(height: getProportionateScreenHeight(20)),
              // NoAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}
