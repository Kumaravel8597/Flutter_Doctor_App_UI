import '../../../util/export.dart';

class DaySlotsUI extends StatefulWidget {
  final AvalableSlotsDates slotData;
  final Function(int, String) onSelected;

  const DaySlotsUI({Key? key, required this.slotData, required this.onSelected}) : super(key: key);

  @override
  State<DaySlotsUI> createState() => _DaySlotsUIState();
}

class _DaySlotsUIState extends State<DaySlotsUI> {
  dynamic selectedData = ["MOR", 0];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        slotsWidget("Morning slot", widget.slotData.morningSlots),
        slotsWidget("Afternoon slot", widget.slotData.afterNoonSlots),
        slotsWidget("Evening slot", widget.slotData.eveningSlots),
      ],
    );
  }

  Widget slotsWidget(String title, List<String> data) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          myText(title, fontSize: 18, fontWeight: SizeConfig.mediumFW),
          verticalSpace(5),
          Row(
            children: List.generate(
              data.length,
              (index) {
                String type = title.substring(0, 3).toUpperCase();
                bool myCondition = selectedData[0] == type && selectedData[1] == index;
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      selectedData = [type, index];
                      widget.onSelected(index, type);
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey.shade400), color: myCondition ? const Color.fromRGBO(255, 132, 18, 1) : null),
                      alignment: Alignment.center,
                      width: 60,
                      height: 60,
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // myText(data.elementAt(index),
                          //     textAlign: TextAlign.center, color: myCondition ? Colors.white : Colors.black, fontSize: 12, fontWeight: SizeConfig.mediumFW),
                          myText(data.elementAt(index).split(" ")[0],
                              color: myCondition ? Colors.white : Colors.black, fontSize: 12, fontWeight: SizeConfig.mediumFW),
                          myText(data.elementAt(index).split(" ")[1],
                              color: myCondition ? Colors.white : Colors.black, fontSize: 12, fontWeight: SizeConfig.mediumFW),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
