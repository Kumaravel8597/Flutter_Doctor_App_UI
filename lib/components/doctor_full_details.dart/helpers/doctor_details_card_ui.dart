import 'package:doctor_app/util/ui_components/star_rating.dart';

import '../../../util/export.dart';

class DoctorBasicInfo extends StatelessWidget {
  final DoctorBasicDetails doctorInfo;
  const DoctorBasicInfo(this.doctorInfo, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: Column(
        children: [
          imageAndNameCard(),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: myText(doctorInfo.description,
                  textAlign: TextAlign.justify,
                  fontSize: 12,
                  color: Colors.black)),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                Expanded(child: treatedCard()),
                Expanded(child: reviewCard()),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget imageAndNameCard() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      height: 110,
      child: Row(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(doctorInfo.imageUrl),
              )),
          Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myText(
                      doctorInfo.name,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    myText(
                      doctorInfo.spelization.toUpperCase(),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    StarRating(
                      rating: doctorInfo.ratings,
                      color: Colors.yellow.shade700,
                    ),
                    myText("${doctorInfo.experience}+ YEARS EXPERIENCE",
                        fontWeight: FontWeight.bold, fontSize: 11)
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget treatedCard() {
    return Container(
      margin: const EdgeInsets.only(right: 7),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300, width: 1.5),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          getIcon(IconConst.user),
          verticalSpace(),
          myText(
            "${doctorInfo.patientsTreated}+",
            fontSize: 15.3,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 2, 4, 90),
          ),
          verticalSpace(5),
          myText(
            "PATIENTS TREATED",
            textAlign: TextAlign.center,
            fontSize: 14.3,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 2, 4, 90),
          ),
          verticalSpace(7),
          myText(
            "Age Group Of ${doctorInfo.ageGroupStart} To \n ${doctorInfo.ageGroupEnd} Years",
            textAlign: TextAlign.center,
            fontSize: 12,
          ),
        ],
      ),
    );
  }

  Widget reviewCard() {
    return Container(
      margin: const EdgeInsets.only(left: 7),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300, width: 1.5),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          getIcon(IconConst.like),
          verticalSpace(),
          myText(
            "${doctorInfo.googleReviewsCount}+",
            fontSize: 15.3,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 2, 4, 90),
          ),
          verticalSpace(5),
          myText(
            "GOOGLE REVIEWS",
            textAlign: TextAlign.center,
            fontSize: 14.3,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 2, 4, 90),
          ),
          verticalSpace(7),
          myText(
            "${doctorInfo.ratings} Star rating On Google",
            textAlign: TextAlign.center,
            fontSize: 12,
          ),
        ],
      ),
    );
  }
}
