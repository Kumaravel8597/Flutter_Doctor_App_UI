import 'package:doctor_app/models/DetailsClinic.dart';
import 'package:flutter/material.dart';

class DeatilsList extends StatelessWidget {
  const DeatilsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MediaQuery.removePadding(
          context: context,
          removeBottom: true,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: detailsitems.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  width: double.infinity,
                  height: 75,
                  margin:
                      const EdgeInsets.only(left: 20, right: 10, bottom: 15),
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
                    // border: Border.all(color:  Color(0xFFC4C4C4)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 75,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          gradient: (index == 0)
                              ? LinearGradient(
                                  colors: <Color>[
                                    Color(0xFFE97000),
                                    Color(0xFFB1008A)
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                )
                              : (index == 1)
                                  ? LinearGradient(
                                      colors: <Color>[
                                        Color(0xFF200055),
                                        Color(0xFF0037C5)
                                      ],
                                      begin: Alignment.bottomRight,
                                      end: Alignment.topCenter,
                                    )
                                  : LinearGradient(
                                      colors: <Color>[
                                        Color(0xFFB1008A),
                                        Color(0xFF0054D1)
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomLeft,
                                    ),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Color(0xFFC4C4C4)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("${detailsitems[index].num}",
                                maxLines: 3,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Quicksand',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600)),
                            Text(detailsitems[index].title,
                                maxLines: 3,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Quicksand',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      Flexible(
                        child: Text(detailsitems[index].desp,
                            maxLines: 3,
                            style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'Quicksand',
                                fontSize: 14)),
                      ),
                    ],
                  ));
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Text(
              "The App serves the Dental needs in total hassle free manner and will facilitate all dental services with personal meet-up reports",
              maxLines: 3,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black, fontFamily: 'Quicksand', fontSize: 11)),
        ),
      ],
    );
  }
}
