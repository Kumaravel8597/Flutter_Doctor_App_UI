import 'package:doctor_app/util/ui_components/star_rating.dart';

import '../../../util/export.dart';

class DoctorDetailsUi extends StatelessWidget {
  final ChooseDateTime chooseDT;
  const DoctorDetailsUi(this.chooseDT, {Key? key}) : super(key: key);
  final double height = 100;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: height,
            height: height,
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(chooseDT.doctorDetails.imageUrl),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  Container(
                    width: height,
                    height: height,
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: myText(
                            chooseDT.doctorDetails.name.toUpperCase(),
                            color: Colors.white,
                            fontSize: SizeConfig.contentFont,
                            fontWeight: SizeConfig.mediumFW,
                          ),
                        ),
                        Flexible(
                          child: myText(
                            chooseDT.doctorDetails.spelization.toUpperCase(),
                            color: Colors.white,
                            fontSize: SizeConfig.contentFont,
                            fontWeight: SizeConfig.boldFW,
                          ),
                        ),
                        Flexible(
                            child: StarRating(
                          color: Colors.yellow.shade600,
                          rating: chooseDT.doctorDetails.ratings,
                          size: 16,
                        )),
                      ],
                    ),
                  ),
                  Container(
                    // margin: const EdgeInsets.symmetric(vertical: 10),
                    height: height,
                    color: Colors.white,
                    width: 1.5,
                  ),
                  Expanded(
                    child: Container(
                      height: height,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              myText(
                                  chooseDT.doctorDetails.experience.toString() +
                                      "+",
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: SizeConfig.boldFW),
                              Expanded(
                                  child: myText(" Years Experinece",
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: SizeConfig.regularFW)),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              myText(
                                  chooseDT.doctorDetails.patientsTreated
                                          .toString() +
                                      "+",
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: SizeConfig.boldFW),
                              Expanded(
                                  child: myText(" Patients Treated",
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: SizeConfig.regularFW)),
                            ],
                          ),
                          Row(
                            children: [
                              myText("",
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: SizeConfig.boldFW),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
