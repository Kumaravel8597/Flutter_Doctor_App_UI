import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor_app/util/export.dart';

class DaySlider extends StatefulWidget {
  final ChooseDateTime dateInfo;
  final Function(int) onSelected;
  const DaySlider(this.dateInfo, {Key? key, required this.onSelected})
      : super(key: key);

  @override
  State<DaySlider> createState() => _DaySliderState();
}

class _DaySliderState extends State<DaySlider> {
  final controller = CarouselController();
  int selectedIndex = 0;
  int page = 3;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        margin: const EdgeInsets.all(0),
        elevation: 1,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: myText(
                    DateTimeConvertion.getDateTimeString(
                        widget.dateInfo.dateSlots.elementAt(selectedIndex).date,
                        isShortFormate: false),
                    fontSize: 18,
                    fontWeight: SizeConfig.mediumFW),
              ),
              verticalSpace(10),
              Expanded(
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          controller.previousPage();
                        },
                        child: const Icon(
                          Icons.arrow_left_outlined,
                          size: 30,
                        )),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey.shade400)),
                          child: CarouselSlider.builder(
                            carouselController: controller,
                            options: CarouselOptions(
                              height: 50.0,
                              enableInfiniteScroll: true,
                              disableCenter: true,
                              viewportFraction: 0.3333,
                            ),
                            itemBuilder: (BuildContext context, int index,
                                int realIndex) {
                              return GestureDetector(
                                  onTap: () {
                                    selectedIndex = index;
                                    widget.onSelected(index);
                                    setState(() {});
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: selectedIndex == index
                                              ? const Color.fromRGBO(
                                                  255, 132, 18, 1)
                                              : null,
                                          border: Border(
                                              right: BorderSide(
                                                  color:
                                                      Colors.grey.shade300))),
                                      // margin: const EdgeInsets.all(2),
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          myText(
                                              DateTimeConvertion
                                                  .getDateTimeString(widget
                                                      .dateInfo.dateSlots
                                                      .elementAt(index)
                                                      .date),
                                              fontSize: 11,
                                              fontWeight: SizeConfig.mediumFW,
                                              color: selectedIndex == index
                                                  ? Colors.white
                                                  : Colors.black),
                                          myText(
                                              widget.dateInfo.dateSlots
                                                      .elementAt(index)
                                                      .avaliableSlots
                                                      .toString() +
                                                  " slots available",
                                              textAlign: TextAlign.center,
                                              fontSize: 9,
                                              fontWeight: SizeConfig.boldFW,
                                              color: selectedIndex == index
                                                  ? Colors.white
                                                  : Colors.orange.shade700)
                                        ],
                                      )));
                            },
                            itemCount: widget.dateInfo.dateSlots.length,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          controller.nextPage();
                        },
                        child: const Icon(
                          Icons.arrow_right_outlined,
                          size: 30,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
