import 'package:doctor_app/components/choose_date_time/helpers/day_slots_ui.dart';
import 'package:doctor_app/components/choose_date_time/helpers/doctor_details.dart';
import 'package:doctor_app/components/choose_date_time/helpers/slider_card.dart';

import '../../util/export.dart';

class ChooseDateTimeUi extends StatefulWidget {
  const ChooseDateTimeUi({Key? key}) : super(key: key);

  @override
  State<ChooseDateTimeUi> createState() => _ChooseDateTimeUiState();
}

class _ChooseDateTimeUiState extends State<ChooseDateTimeUi> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomSheet: bookNowButtom(),

        // backgroundColor: Colors.blue,
        body: Stack(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(colors: [
                    Color.fromRGBO(0, 55, 197, 1),
                    Color.fromRGBO(32, 0, 85, 1),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 70),
              child: Column(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                    height: 60,
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios_new_rounded,
                                size: 20,
                                color: Colors.white,
                              )),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: myText("CHOOSE DATE & TIME",
                              fontSize: 15,
                              fontWeight: SizeConfig.boldFW,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        DoctorDetailsUi(chooseDateTimeDmmy),
                        verticalSpace(35),
                        DaySlider(
                          chooseDateTimeDmmy,
                          onSelected: (index) {
                            selectedIndex = index;
                            setState(() {});
                          },
                        ),
                        verticalSpace(20),
                        DaySlotsUI(
                            slotData: chooseDateTimeDmmy.dateSlots
                                .elementAt(selectedIndex),
                            onSelected: (index, type) {})
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bookNowButtom() {
    return Container(
        margin: const EdgeInsets.all(10),
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 3, 38, 128),
                Color.fromRGBO(32, 0, 85, 1),
              ],
            ),
            borderRadius: BorderRadius.circular(50)),
        child: Center(
            child: Text(
          "BOOK YOUR APPOINMENT",
          style: myTextStyle(fontSize: 16, color: Colors.white),
        )));
  }
}
