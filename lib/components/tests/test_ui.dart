import 'package:doctor_app/util/export.dart';
import 'package:doctor_app/util/models/tests_modal.dart';

import 'helpers/back_bottom_bar.dart';

class TestHomeUi extends StatefulWidget {
  const TestHomeUi({Key? key}) : super(key: key);

  @override
  State<TestHomeUi> createState() => _TestHomeUiState();
}

class _TestHomeUiState extends State<TestHomeUi> {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BackBottomBar('BACK'),
      body: Column(
        children: [
          verticalSpace(15),
          appBar(),
          testsList(),
        ],
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
          'TEST',
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        const Spacer(),
      ],
    );
  }

  Widget testsList() {
    return Padding(
        padding:
            const EdgeInsets.only(top: 10.0, bottom: 10, left: 30, right: 30),
        child: Column(
          children: List.generate(
              dummyTests.length,
              (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 80,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          circleImage(dummyTests.elementAt(index).imageUrl,
                              dummyTests.elementAt(index).colors!),
                          horizontalSpace(20),
                          Expanded(
                            child: myText(
                              dummyTests.elementAt(index).testName,
                              fontSize: 12,
                            ),
                          ),
                          horizontalSpace(),
                          myText(
                              '\u{20B9} ${dummyTests.elementAt(index).testPrice}',
                              fontSize: 18,
                              color: Colors.green),
                          horizontalSpace(),
                          button(index)
                        ],
                      ),
                    ),
                  )),
        ));
  }

  Widget circleImage(String image, List<Color> clr) {
    return Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: clr),
        borderRadius: const BorderRadius.all(Radius.circular(50.0)),
      ),
      child:
          Padding(padding: const EdgeInsets.all(12.0), child: Image.asset(image)
              //  Image(image: AssetImage(image)),
              ),
    );
  }

  Widget button(int index) {
    return SizedBox(
      width: 80,
      child: ElevatedButton(
        child: myText((selectedIndex == index) ? 'Selected' : 'Select',
            fontSize: 11,
            color: (selectedIndex == index) ? Colors.white : Colors.grey),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                (selectedIndex == index) ? Colors.green : Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)))),
        onPressed: () {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
