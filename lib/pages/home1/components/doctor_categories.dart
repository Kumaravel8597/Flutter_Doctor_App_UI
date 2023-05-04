import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/constants.dart';
import '../../../constants/constants.dart';
import '../../../constants/icons.dart';
import '../../../models/Doctors.dart';


class DoctorCategory extends StatelessWidget {
  const DoctorCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20,left: 20),
          child: Text("Our Doctors",
            style: TextStyle(
                color: Colors.black,
                fontFamily:'Quicksand',
                fontSize: 20,fontWeight: FontWeight.bold
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 230,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: ClampingScrollPhysics(),
            padding: const EdgeInsets.all(10.0),
            itemCount: doctorDetails.length,

            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(left:10),
                child: GestureDetector(
                  onTap: doctorDetails[index].press,
                  child: Container(
                    width:175,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.25),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding:EdgeInsets.only(top:5),
                          child: Image.asset(
                            doctorDetails[index].image,
                            fit: BoxFit.fitHeight,
                            height: 150,
                            width: 175,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 130,
                          ),
                          child: Container(
                            width:175,
                            decoration: BoxDecoration(
                              gradient: (index % 2 == 0) ?LinearGradient(
                                colors: <Color>[Color(0xFFBE0064), Color(0xFFDC1E1E)],
                              ):LinearGradient(
                                colors: <Color>[Color(0xFF460FAA), Color(0xFF87008C)],
                              ),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)
                              ),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 5),
                                  Text(doctorDetails[index].name,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontFamily:'Quicksand',
                                      fontSize: 18,fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  Text(doctorDetails[index].dept,
                                    style: TextStyle(
                                      fontFamily:'Quicksand',
                                      fontSize: 15,fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  Image.asset(
                                    "assets/icons/fourStar.png",
                                    fit: BoxFit.fitWidth,
                                    height: 18,
                                  ),
                                  // SizedBox(height: 5)

                                ]
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },


          ),
        ),
      ],
    );
  }
}
