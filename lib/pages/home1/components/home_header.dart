import 'package:flutter/material.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 276,
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/icons/gradientBG.png"),
                fit: BoxFit.cover,
              ),
              color: Colors.indigoAccent,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                      margin: const EdgeInsets.only( bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Spacer(),
                              const Text(
                                'NO.1 AFTER TREATMENT\nSERVICES IN INDIA',
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,fontFamily:'Quicksand',),


                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: IconButton(
                                    onPressed: () {
                                      //  You enter here what you want the button to do once the user interacts with it
                                    },
                                    icon: const Icon(
                                      Icons.more_vert,
                                      color: Colors.white,
                                    ),
                                    iconSize: 40.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Image.asset(
                                  "assets/icons/fiveStar.png",
                                  fit: BoxFit.fitWidth,
                                  height: 20,
                                ),
                              ]

                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30,right: 30,top: 10),
                            child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                                  // border:
                                  // Border.all(color: Colors.white, width: 1)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("BOOK YOUR APPOINMENT",
                                        style: TextStyle(color: Colors.indigo,fontFamily:'Quicksand',fontWeight: FontWeight.w600,fontSize: 15)),
                                  ],
                                )),
                          )
                        ],
                      )),
                ),

              ],
            ),
          )),
    );
  }
}
