import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../constants/icons.dart';

class DoctorBanner extends StatelessWidget {
  const DoctorBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: double.infinity,
        height: 100,
        margin: const EdgeInsets.only(left: 20, right: 10, bottom: 15),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color(0xFFC4C4C4)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("SAVE TIME",
                maxLines: 2,
                style: TextStyle(
                    color: kSecondaryColor,
                    fontFamily: 'Quicksand',
                    fontSize: 15,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w900)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                    "Dr. John Honay has pre-entered\nyour booking details for 24th sept.",
                    maxLines: 2,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Quicksand',
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
                ElevatedButton.icon(
                  icon: Image.asset(
                    ImageFiles.IndexFinger,
                    height: 18,
                  ),
                  label: const Text('BOOK NOW',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Quicksand',
                          fontSize: 10,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    print('Button Pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: kSecondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      Stack(
        alignment: AlignmentDirectional.bottomStart,
        fit: StackFit.loose,
        children: <Widget>[
          Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 20, right: 10, top: 30),
              padding: const EdgeInsets.only(left: 170, top: 20, bottom: 5),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: <Color>[Color(0xFF0F027D), Color(0xFF9B007D)],
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Dr.JOHN HONAY",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Quicksand',
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "DMD",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "St No.2, Haganakkal, Madurai",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          overflow: TextOverflow.ellipsis,
                          fontFamily: 'Quicksand'
                          // fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 10),
                  ])),
          Positioned(
            width: 165,
            height: 132,
            top: -5,
            left: 20,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icons/dc1.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          )
        ],
      ),
    ]);
  }
}
