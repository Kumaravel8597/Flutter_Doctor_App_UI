import 'package:doctor_app/constants/icons.dart';
import 'package:flutter/material.dart';

class BookAppointmentPage extends StatefulWidget {
  const BookAppointmentPage({Key? key}) : super(key: key);

  @override
  State<BookAppointmentPage> createState() => _BookAppointmentPageState();
}

class _BookAppointmentPageState extends State<BookAppointmentPage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Image.asset(
                  ImageFiles.MENU,
                  color: Colors.black,
                  height: 50,
                  width: 50,
                ),
                //SizedBox(width: 0,),
                Column(
                  children: [
                    Image.asset(
                      ImageFiles.SMILE,
                      color: const Color(0xffE97000),
                      height: 30,
                      width: 30,
                    ),
                    const Text("DOCTOR")
                  ],
                ),
                Row(
                  children: [
                    Text("Madurai"),
                    Image.asset(
                      ImageFiles.LOCATION,
                      color: const Color(0xffE97000),
                      height: 25,
                      width: 25,
                    )
                  ],
                )
              ]),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(ImageFiles.FEMALE_DOC),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Shivani Sharma"),
                      Text("BDS, MDS"),
                      Image.asset(
                        ImageFiles.STARS,
                        width: screenWidth * 0.35,
                      ),
                      Text("10+ YEARS EXPERIENCE"),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: screenWidth * 0.8,
                child: Text(
                    "Shivani Sharma has been an experienced specialist and serving people for years. Her area of expertise lies in Dental implants, Cavity Fittings and Dentures. She is a life long member of Dental Council of India and recipient of several awards. Her facility has many dental specialists and known for patient's most preferred destination for dental expertise. "),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    width: screenWidth * 0.45,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageFiles.USER,
                            height: 40,
                            width: 40,
                          ),
                          Text("5000+"),
                          Text("PATEINTS TREATED"),
                          Text(
                            "Age Group of 8 to 75 years ",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: screenWidth * 0.45,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageFiles.THUMBSUP,
                            height: 40,
                            width: 40,
                          ),
                          Text("500+"),
                          Text("GOOGLE REVIEWS"),
                          Text(
                            "4.8 Star Rating on Google",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
