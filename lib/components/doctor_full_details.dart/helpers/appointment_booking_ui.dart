import '../../../util/export.dart';

class AppointmentBookingUi extends StatefulWidget {
  const AppointmentBookingUi({Key? key}) : super(key: key);

  @override
  State<AppointmentBookingUi> createState() => _AppointmentBookingUiState();
}

class _AppointmentBookingUiState extends State<AppointmentBookingUi> {
  int? consultationId;
  int? treatmentTypeId;
  TextEditingController paitentName = TextEditingController();
  TextEditingController paitentAge = TextEditingController();
  TextEditingController paitentmedicalhistory = TextEditingController();
  List<int> problemsId = List<int>.empty(growable: true);
  DateTime? scheduleDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(212, 224, 255, 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          myText(
            "Book Your Appoinment",
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          verticalSpace(15),
          constltingTypesUi(),
          verticalSpace(15),
          myText(
            "Patient Details",
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          verticalSpace(15),
          textField(paitentName, 'Patient Name*'),
          verticalSpace(15),
          textField(paitentAge, 'Patient Age*', true),
          verticalSpace(15),
          popupMenu(),
          verticalSpace(15),
          textField(paitentmedicalhistory, 'Previous medical history*', false, true),
          verticalSpace(15),
          datePicker(),
          verticalSpace(15),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: myText("clinic consultation : 1000 Rs/-", fontSize: 13, color: const Color.fromARGB(255, 245, 140, 3))),
          verticalSpace(15),
          bookNowButtom(),
          verticalSpace(20),
          treatmentTypesUi(),
        ],
      ),
    );
  }

  Widget constltingTypesUi() {
    return Row(
      children: [
        Expanded(
            child: constltingTypesCard(consultingTypes[0], consultationId == 0, () {
          consultationId = 0;
          setState(() {});
        })),
        horizontalSpace(10),
        Expanded(
            child: constltingTypesCard(consultingTypes[1], consultationId == 1, () {
          consultationId = 1;
          setState(() {});
        })),
        horizontalSpace(10),
        Expanded(
            child: constltingTypesCard(consultingTypes[2], consultationId == 2, () {
          consultationId = 2;
          setState(() {});
        })),
      ],
    );
  }

  Widget constltingTypesCard(dynamic data, bool isSelected, void Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          gradient: isSelected
              ? const LinearGradient(colors: [
                  Color.fromRGBO(223, 112, 0, 1),
                  Color.fromRGBO(117, 0, 138, 1),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight)
              : null,
        ),
        child: Column(
          children: [
            getIcon(
              data[0],
              color: isSelected ? Colors.white : const Color.fromRGBO(21, 19, 124, 1),
            ),
            verticalSpace(15),
            myText(
              data[1].toString().split(" ")[0].toUpperCase(),
              textAlign: TextAlign.center,
              maxLines: 2,
              fontSize: 11,
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: SizeConfig.mediumFW,
            ),
            myText(
              data[1].toString().split(" ")[1].toUpperCase(),
              textAlign: TextAlign.center,
              maxLines: 2,
              fontSize: 11,
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: SizeConfig.mediumFW,
            ),
          ],
        ),
      ),
    );
  }

  Widget textField(TextEditingController controller, String hintText, [bool isNumeric = false, bool isDescription = false]) {
    return TextFormField(
      controller: controller,
      keyboardType: isNumeric ? TextInputType.number : TextInputType.name,
      maxLines: isDescription ? 3 : 1,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
        hintStyle: myTextStyle(fontSize: 18, color: const Color.fromARGB(255, 202, 191, 191)),
        // labelText: hintText,
        prefix: horizontalSpace(15),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(isDescription ? 25 : 50), borderSide: const BorderSide(color: Colors.white)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(isDescription ? 25 : 50), borderSide: const BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(isDescription ? 25 : 50), borderSide: const BorderSide(color: Colors.white)),
      ),
    );
  }

  Widget popupMenu() {
    return PopupMenuButton(
      initialValue: 2,
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(problemsId.isEmpty ? 'View all problems*' : "$problemsId Problems Selected",
                style: myTextStyle(fontSize: 18, color: const Color.fromARGB(255, 202, 191, 191))),
            const Icon(Icons.arrow_drop_down)
          ],
        ),
      ),
      itemBuilder: (context) {
        return List.generate(5, (index) {
          return PopupMenuItem(
            value: index,
            child: Text('button no $index'),
          );
        });
      },
    );
  }

  Widget datePicker() {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(scheduleDate == null ? 'Select date & time*' : scheduleDate.toString(),
              style: myTextStyle(fontSize: 18, color: const Color.fromARGB(255, 202, 191, 191))),
          GestureDetector(
            child: const Image(
              image: AssetImage("assets/icons/fontisto_date.png"),
              color: Colors.black,
              height: 20,
              width: 20,
              fit: BoxFit.contain,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget bookNowButtom() {
    return Container(
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

  Widget treatmentTypesUi() {
    return Row(
      children: [
        Expanded(
            child: treatMentTypesCard(treatmentTypes[0], treatmentTypeId == 0, () {
          treatmentTypeId = 0;
          setState(() {});
        })),
        horizontalSpace(10),
        Expanded(
            child: treatMentTypesCard(treatmentTypes[1], treatmentTypeId == 1, () {
          treatmentTypeId = 1;
          setState(() {});
        })),
        horizontalSpace(10),
        Expanded(
            child: treatMentTypesCard(treatmentTypes[2], treatmentTypeId == 2, () {
          treatmentTypeId = 2;
          setState(() {});
        })),
      ],
    );
  }

  Widget treatMentTypesCard(dynamic data, bool isSelected, void Function() onTap) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
              border: isSelected ? Border.all(color: Colors.orange, width: 2) : null,
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    getIcon(data[0], size: 40),
                    verticalSpace(15),
                    myText(
                      data[1].toString().split(" ")[0],
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      fontSize: 13,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        verticalSpace(),
        myText(
          data[2],
          fontSize: 11,
          color: (data[2] != 'None Selected') ? Colors.green : Colors.black,
          fontWeight: FontWeight.bold,
        ),
        verticalSpace(),
      ],
    );
  }
}
