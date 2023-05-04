import 'package:flutter/material.dart';

import '../../util/ui_components/helper_widgets.dart';
import '../../util/ui_components/text_component.dart';
import '../tests/helpers/back_bottom_bar.dart';

class ChooseProblem extends StatefulWidget {
  const ChooseProblem({Key? key}) : super(key: key);

  @override
  State<ChooseProblem> createState() => _ChooseProblemState();
}

class _ChooseProblemState extends State<ChooseProblem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BackBottomBar('CONFIRM PROBLEM'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(15),
            appBar(),
            verticalSpace(10),
            body(),
            verticalSpace(80),
          ],
        ),
      ),
    );
  }

  Widget appBar() {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 15,
            )),
        const Spacer(),
        myText(
          'CHOOSE ANY PROBLEM',
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        const Spacer(),
      ],
    );
  }

  Widget body() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          discussWithDoctor(),
          verticalSpace(20),
          chooseSpecificProblem(),
        ],
      ),
    );
  }

  Widget discussWithDoctor() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myText('1. I Will Discuss With Doctor', fontSize: 18, fontWeight: FontWeight.bold),
        verticalSpace(5),
        Container(
            width: 100,
            height: 60,
            color: Colors.grey.shade200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add,
                  size: 15,
                  color: Color.fromARGB(255, 37, 33, 243),
                ),
                myText(
                  'More',
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 37, 33, 243),
                ),
              ],
            )),
        verticalSpace(5),
        myText('Select This If You Dont Know The Problem Name', fontSize: 13)
      ],
    );
  }

  Widget chooseSpecificProblem() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myText('2. Choose Specific Problem', fontSize: 18, fontWeight: FontWeight.bold),
        verticalSpace(5),
        Column(
          children: List.generate(
              iconsData.length,
              (index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(iconsData.elementAt(index).length, (subIndex) => problemContainer(iconsData[index][subIndex], index, subIndex)),
                    ),
                  )),
        )
      ],
    );
  }

  Widget problemContainer(dynamic data, int index, int subindex) {
    return Center(
      child: Card(
        color: data[2] ? Color.fromARGB(255, 8, 6, 126) : null,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
        child: InkWell(
          onTap: () {
            for (var i = 0; i < iconsData.length; i++) {
              for (var j = 0; j < iconsData[i].length; j++) {
                iconsData[i][j][2] = false;
              }
            }

            iconsData[index][subindex][2] = true;
            setState(() {});
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 100,
            width: 105,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    data[0],
                    color: data[2] ? Colors.white : Colors.orange,
                    height: 30,
                    width: 30,
                  ),
                  // Image(
                  //     color: data[2] ? Colors.white : Colors.orange,
                  //     height: 30,
                  //     width: 30,
                  //     image: AssetImage(
                  //       data[0],
                  //     )),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    data[1],
                    style: TextStyle(
                      color: data[2] ? Colors.white : Colors.orange,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<List<dynamic>> iconsData = [
  [
    ['assets/icons/tooth/costemic.png', 'Cosmtemic Dentistry', false],
    ['assets/icons/tooth/toothwhite.png', 'Tooth Whitening', false],
    ['assets/icons/tooth/costemic.png', 'Mouth Reconstction', false]
  ],
  [
    ['assets/icons/tooth/dentalimplants.png', 'Dental Implants', false],
    ['assets/icons/tooth/rootcanal.png', 'Root Canal', true],
    ['assets/icons/tooth/childteeth.png', 'Child Teeth', false]
  ],
  [
    ['assets/icons/tooth/cavityfittings.png', 'Cavity Fittings', false],
    ['assets/icons/tooth/gumsurgery.png', 'Gun Surgery', false],
    ['assets/icons/tooth/dentures.png', 'Dentures', false]
  ],
  [
    ['assets/icons/tooth/orthodontics.png', 'Orthodontics', false],
    ['assets/icons/tooth/bridges.png', 'Bridges', false],
  ],
];
