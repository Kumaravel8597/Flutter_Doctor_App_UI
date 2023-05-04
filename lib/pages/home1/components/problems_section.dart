import 'package:doctor_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/Problems.dart';

class ProblemSection extends StatefulWidget {
  const ProblemSection({Key? key}) : super(key: key);
  @override
  _ProblemSectionState createState() => _ProblemSectionState();
}

class _ProblemSectionState extends State<ProblemSection> {
  List<int> _selectedIndexList = [];
  bool selectionMode = false;
  int selectedCard = -1;
  void _changeSelection({required bool enable, required int index}) {
    selectionMode = enable;
    _selectedIndexList.add(index);
    if (index == -1) {
      _selectedIndexList.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, top: 25),
          child: const Text(
            "Choose From Problems",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Quicksand',
                fontSize: 20,
                fontWeight: FontWeight.bold

                // fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const SizedBox(height: 10),
        GridView.builder(
          // controller: gridViewController,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.all(10.0),
          itemCount: griditems.length,

          itemBuilder: (BuildContext context, int index) {
            return InkResponse(
              onTap: () {
                // setState(() {
                //   if (_selectedIndexList.contains(index)) {
                //     _selectedIndexList.remove(index);
                //   } else {
                //     _selectedIndexList.add(index);
                //   }
                // });
                setState(() {
                  // ontap of each card, set the defined int to the grid view index
                  selectedCard = index;
                });
              },
              // onLongPress: () {
              //   setState(() {
              //     _changeSelection(enable: false, index: -1);
              //   });
              // },
              child: Container(
                // padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 0.15),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: selectedCard == index ? kSecondaryColor : Colors.white,
                ),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(),
                        child: ColorFiltered(
                          colorFilter: selectedCard == index
                              ? ColorFilter.mode(Colors.white, BlendMode.srcIn)
                              : ColorFilter.mode(
                                  Color(0xFFE97000), BlendMode.srcIn),
                          child: Image.asset(griditems[index].icon),
                        )),
                    const SizedBox(height: 5),
                    Text(
                      griditems[index].title,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                          color: selectedCard == index
                              ? Colors.white
                              : Colors.black,
                          fontFamily: 'Quicksand',
                          fontSize: 14,
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                )),
                margin: const EdgeInsets.only(
                    left: 10, right: 5, top: 10, bottom: 10),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
        )
      ],
    );
  }
}
