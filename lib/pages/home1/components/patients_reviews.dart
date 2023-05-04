import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../models/PatientReview.dart';



class PatientReviewSection extends StatelessWidget {
  const PatientReviewSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20,right: 10,top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Clinical Resource of the month",
            style: TextStyle(
                color: Colors.black,
                fontFamily:'Quicksand',
                fontSize: 20,fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 10,),
          Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 0.5,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    // padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[Color(0xFF0037C5),Color(0xFF950074)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color:  Color(0xFFC4C4C4)),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/icons/dental-clinic 1.png",
                        fit: BoxFit.contain,
                        width: 45,
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(top:20,bottom: 30),
                    // width: MediaQuery.of(context).size.width/2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Octopus Dental Center",
                            maxLines: 3,
                            style:const TextStyle(color: Colors.black,
                                fontFamily:'Quicksand', fontSize: 14,fontWeight:FontWeight.w600 )),
                        Text("Aurobindo Marg, New Delhi",
                            style:const TextStyle(color: Colors.black,
                                fontFamily:'Quicksand', fontSize: 12,fontWeight:FontWeight.w400)),
                        Container(
                          width: 100,
                          child: Image.asset(
                            "assets/icons/fiveStar.png",
                            fit: BoxFit.cover,
                            height: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 2,
                    height: 120,
                    color: Colors.grey[100],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          gradient:LinearGradient(
                            colors: <Color>[Color(0xFFE97000),Color(0xFFB1008A)],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          )
                        ),
                        child:
                            Text("37",
                                style:const TextStyle(color: Colors.white,
                                    fontFamily:'Quicksand', fontSize: 16,fontWeight: FontWeight.bold)),

                      ),
                      SizedBox(height: 5,),
                      Text("4+ star rating",
                          style:const TextStyle(color: Colors.black,
                              fontFamily:'Quicksand', fontSize: 12,)),
                    ],
                  )
                ],
              )
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text("Patients Reviews",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily:'Quicksand',
                    fontSize: 20,fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20,),
              MediaQuery.removePadding(
                context: context,
                removeTop: true,
                removeBottom: true,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: patientReviewItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return  Container(
                        width: double.infinity,
                        height: 75,
                        margin: const EdgeInsets.only(right: 10,bottom: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: (index == 0) ?Color(0xFFFFD8B4):(index == 1)?Color(0xFFC8D7FF):Color(0xFFFFC3F2), //                   <--- border color
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.15),
                              spreadRadius: 0.5,
                              blurRadius: 5,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          // border: Border.all(color:  Color(0xFFC4C4C4)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            if (index % 2 == 0) ...[
                              Container(
                                  width: 75,
                                  // padding: EdgeInsets.only(left: 10,right: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      color: (index == 0) ?Color(0xFFE97000):(index == 1)?Color(0xFF0037C5):Color(0xFFB1008A), //                   <--- border color
                                      width: 3.0,
                                    ),
                                  ),
                                  child:ClipRRect(
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: Image.asset(
                                      patientReviewItems[index].image,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("${patientReviewItems[index].name}",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily:'Quicksand',
                                        ),
                                      ),
                                      SizedBox(height: 2),
                                      Text(patientReviewItems[index].content,
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontFamily:'Quicksand',
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 10),

                                    ]
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                width: 70,

                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(patientReviewItems[index].drName,
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontFamily:'Quicksand',
                                        ),
                                      ),

                                      Image.asset(
                                        "assets/icons/fourStar.png",
                                        fit: BoxFit.fitWidth,
                                        height: 13,
                                      ),
                                      SizedBox(height: 10),

                                    ]
                                ),
                              ),
                            ]else...[
                              Container(
                                width: 70,
                                padding: EdgeInsets.only(left: 15),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(patientReviewItems[index].drName,
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontFamily:'Quicksand',
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/icons/fourStar.png",
                                        fit: BoxFit.fitWidth,
                                        height: 13,
                                      ),
                                      SizedBox(height: 10),

                                    ]
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("${patientReviewItems[index].name}",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily:'Quicksand',
                                        ),
                                      ),
                                      SizedBox(height: 2),
                                      Text(patientReviewItems[index].content,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                          fontSize: 10,

                                          fontFamily:'Quicksand',
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 10),

                                    ]
                                ),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                  width: 75,
                                  // padding: EdgeInsets.only(left: 10,right: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      color: (index == 0) ?Color(0xFFE97000):(index == 1)?Color(0xFF0037C5):Color(0xFFB1008A), //                   <--- border color
                                      width: 3.0,
                                    ),
                                  ),
                                  child:ClipRRect(
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: Image.asset(
                                      patientReviewItems[index].image,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                              ),
                            ],

                          ],
                        )
                    );
                  },
                ),
              ),
              // SizedBox(height: 120,),

            ],
          ),
        ],
      ),
    );
  }
}
