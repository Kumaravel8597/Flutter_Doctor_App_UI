import 'package:flutter/material.dart';

import '../../../constants/constants.dart';



class DoctorConsult extends StatelessWidget {
  const DoctorConsult({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20,right: 10,top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Choose Your Consultation",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily:'Quicksand',
                  fontSize: 20,fontWeight: FontWeight.bold
              ),
            ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkResponse(
                onTap: (){

                },
                child: Container(
                  padding: const EdgeInsets.only(top:20.0,left: 10,right: 10,bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, width: 0.15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/video.png",
                        fit: BoxFit.fitWidth,
                        height: 25,
                        width: 30,
                      ),


                      const SizedBox(height: 12),
                      Text("VIDEO\nCONSULTATION",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: const TextStyle(
                            color: Colors.black, fontFamily:'Quicksand', fontSize: 12,overflow:TextOverflow.ellipsis),),
                    ],
                  ),
                ),
              ),
              InkResponse(
                onTap: (){

                },
                child: Container(
                  padding: const EdgeInsets.only(top:20.0,left: 10,right: 10,bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, width: 0.15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/roundCall.png",
                        fit: BoxFit.contain,
                        height: 25,
                        width: 30,
                      ),


                      const SizedBox(height: 12),
                      Text("CLINICAL\nCONSULTATION",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: const TextStyle(
                            color: Colors.black, fontFamily:'Quicksand', fontSize: 12,overflow:TextOverflow.ellipsis),),
                    ],
                  ),
                ),
              ),
              InkResponse(
                onTap: (){

                },
                child: Container(
                  padding: const EdgeInsets.only(top:20.0,left: 10,right: 10,bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, width: 0.15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/callBlue.png",
                        fit: BoxFit.contain,
                        height: 25,
                        width: 30,
                      ),

                      const SizedBox(height: 12),
                      Text("TELEPHONIC\nCONSULTATION",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: const TextStyle(
                            color: Colors.black, fontFamily:'Quicksand', fontSize: 12,overflow:TextOverflow.ellipsis),),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Text("Doctor of the Month",
            style: TextStyle(
                color: Colors.black,
                fontFamily:'Quicksand',
                fontSize: 20,fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 10,),
          Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[Color(0xFFB1008A),Color(0xFFE97000)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color:  Color(0xFFC4C4C4)),
                    ),
                    child: Image.asset(
                      "assets/icons/dc1.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    width: MediaQuery.of(context).size.width/2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dony Paul Mathew",
                            maxLines: 3,
                            style:const TextStyle(color: Colors.black,
                                fontFamily:'Quicksand', fontSize: 16,fontWeight:FontWeight.w500 )),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("DENTIST",
                                  style:const TextStyle(color: kSecondaryColor,
                                      fontFamily:'Quicksand', fontSize: 15,fontWeight:FontWeight.w600)),
                            Container(
                              width: 1,
                              height: 15,
                              color: Colors.grey,
                            ),
                            Container(
                              width: 100,
                              child: Image.asset(
                                "assets/icons/fiveStar.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),

                        Text("I always prefer dr.dony,\nhe is the best",
                            maxLines: 2,
                            style:const TextStyle(color: Colors.black,
                                fontFamily:'Quicksand', fontSize: 14,fontWeight:FontWeight.w400)),

                        Container(
                            width:MediaQuery.of(context).size.width/2.15,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient:kPrimaryGradientColor,
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
                            child: Text('VIEW MORE REVIEWS',style:TextStyle(color: Colors.white, fontSize: 13))),
                      ],
                    ),
                  ),
                ],
              )
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Image.asset("assets/icons/graph.png",
            fit: BoxFit.contain,),
          ),
        ],
      ),
    );
  }
}
