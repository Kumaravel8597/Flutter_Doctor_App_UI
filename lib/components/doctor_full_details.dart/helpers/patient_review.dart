import '../../../util/export.dart';


class PatientReview extends StatelessWidget {
  final DoctorBasicDetails doctorInfo;
  const PatientReview(this.doctorInfo, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 15, left: 15),
                child: myText(
                  'Patient Reviews',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 15, right: 20),
                child: Row(
                  children: const [
                    Icon(Icons.chevron_left),
                    Icon(Icons.chevron_right),
                  ],
                ),
              )
            ],
          ),
          Expanded(
              child: Column(
                children: [
                  patientReviewCard(),
                  verticalSpace(15),
                  doctorCard(),
                  // verticalSpace(),
                  // patientReviewCard(),
                  // verticalSpace(),
                  // doctorCard(),
                  // verticalSpace(),
                ],
              ))
        ],
      ),
    );
  }

  Widget patientReviewCard() {
    return Padding(
      padding: const EdgeInsets.only(
        right: 17.0,
        left: 15.0,
      ),
      child: Container(
          height: 90,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(212, 224, 255, 1),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Image.asset(
                  'assets/images/patient.png',
                  fit: BoxFit.fill,
                ),
              ),
              horizontalSpace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myText('MAIJO JOSE', fontWeight: FontWeight.bold, fontSize: 11),
                  myText('Lorem Ipsum is simple dummy ', fontSize: 10),
                  Row(
                    children: [
                      myText('Text of the printing', fontSize: 10),
                      horizontalSpace(3),
                      myText('See More', fontSize: 10, fontWeight: FontWeight.bold),
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myText('KNOWLEDGE', fontSize: 11, fontWeight: FontWeight.bold),
                  Row(
                    children: List.generate(
                        4,
                        (index) => SizedBox(
                              width: 15,
                              child: Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.yellow.shade700,
                              ),
                            )),
                  ),
                ],
              ),
              horizontalSpace(20),
            ],
          )),
    );
  }

  Widget doctorCard() {
    return Padding(
      padding: const EdgeInsets.only(
        right: 17.0,
        left: 50.0,
      ),
      child: Container(
          height: 90,
          decoration: BoxDecoration(
            color: Colors.pink.shade200,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 100,
                width: 200,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      myText("Dr.Serene", textAlign: TextAlign.right, fontWeight: FontWeight.bold, fontSize: 11),
                      verticalSpace(5),
                      myText('Lorem Ipsum is simple dummy ', textAlign: TextAlign.right, fontSize: 10),
                      verticalSpace(5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          myText('See More', fontSize: 10, fontWeight: FontWeight.bold),
                          horizontalSpace(5),
                          myText('Text of the printing', fontSize: 10),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Image.asset(doctorInfo.imageUrl))
            ],
          )),
    );
  }
}
