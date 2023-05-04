

import '../../../util/export.dart';

class MoreAboutDoctorUi extends StatefulWidget {
  final MoreAboutDoctor aboutDoctor;
  const MoreAboutDoctorUi(this.aboutDoctor, {Key? key}) : super(key: key);

  @override
  State<MoreAboutDoctorUi> createState() => _MoreAboutDoctorUiState();
}

class _MoreAboutDoctorUiState extends State<MoreAboutDoctorUi> {
  List<dynamic> iteams = List<dynamic>.empty(growable: true);
  @override
  void initState() {
    iteams = [
      ["Specialization", widget.aboutDoctor.specialization, false],
      ["Education", widget.aboutDoctor.education, false],
      ["Experience", widget.aboutDoctor.experience, false],
      ["Awards & Achievements", widget.aboutDoctor.awardsAndAchievements, false],
      ["Membership", widget.aboutDoctor.memberShip, false],
      ["Registration", widget.aboutDoctor.registration, false],
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(6),
          myText(
            'View More About Doctor',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          verticalSpace(6),
          Column(
            children: List.generate(iteams.length, (index) => expansionCard(iteams[index][0], iteams[index][1], iteams[index][2], index)),
          ),
        ],
      ),
    );
  }

  Widget expansionCard(String title, String info, bool isOpen, int index) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
      decoration: BoxDecoration(color: const Color.fromRGBO(240, 240, 240, 0.8), borderRadius: BorderRadius.circular(10)),
      child: Theme(
        data: ThemeData().copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          backgroundColor: const Color.fromRGBO(240, 240, 240, 0.8),
          tilePadding: const EdgeInsets.all(0),
          trailing: Icon(
            isOpen ? Icons.arrow_drop_up_outlined : Icons.arrow_drop_down_outlined,
            size: 30,
            color: Colors.black,
          ),
          title: myText(title, fontSize: 14, fontWeight: FontWeight.bold),
          onExpansionChanged: (data) {
            iteams[index][2] = data;
            setState(() {});
          },
          collapsedTextColor: Colors.black,
          children: [
            myText((info), fontSize: 12, color: Colors.black, fontWeight: FontWeight.w300),
          ],
        ),
      ),
    );
  }
}
