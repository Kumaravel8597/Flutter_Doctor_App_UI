
import '../constants/model_constants/doctor_details_constants.dart';
import 'doctor_basic_detsils.dart';

class ChooseDateTime {
  final DoctorBasicDetails doctorDetails;
  final List<AvalableSlotsDates> dateSlots;

  ChooseDateTime({required this.doctorDetails, required this.dateSlots});

  factory ChooseDateTime.parseResponse(dynamic data) {
    return ChooseDateTime(
      doctorDetails: data[DoctorDetailsConstants.details],
      dateSlots: data[ChooseDateTimeConstants.dateSlots] == null
          ? List<AvalableSlotsDates>.empty(growable: true)
          : (data[ChooseDateTimeConstants.dateSlots] as List<dynamic>).map((e) => AvalableSlotsDates.parseResponse(e)).toList(),
    );
  }

  Map<String, dynamic> getMap() => {
        DoctorDetailsConstants.details: doctorDetails.getMap(),
        ChooseDateTimeConstants.dateSlots: dateSlots.map((e) => e.getMap()).toList(),
      };
}

class AvalableSlotsDates {
  final DateTime date;
  final int avaliableSlots;
  final List<String> morningSlots;
  final List<String> afterNoonSlots;
  final List<String> eveningSlots;

  AvalableSlotsDates({
    required this.date,
    required this.avaliableSlots,
    required this.morningSlots,
    required this.afterNoonSlots,
    required this.eveningSlots,
  });

  factory AvalableSlotsDates.parseResponse(dynamic data) {
    return AvalableSlotsDates(
      date: DateTime.parse(data[ChooseDateTimeConstants.date]),
      avaliableSlots: data[ChooseDateTimeConstants.avaliableSlots],
      morningSlots: data[ChooseDateTimeConstants.morningSlots],
      afterNoonSlots: data[ChooseDateTimeConstants.afterNoonSlots],
      eveningSlots: data[ChooseDateTimeConstants.eveningSlots],
    );
  }
  Map<String, dynamic> getMap() => {
        ChooseDateTimeConstants.date: date.toString(),
        ChooseDateTimeConstants.avaliableSlots: avaliableSlots,
        ChooseDateTimeConstants.morningSlots: morningSlots,
        ChooseDateTimeConstants.afterNoonSlots: afterNoonSlots,
        ChooseDateTimeConstants.eveningSlots: eveningSlots,
      };
}
















ChooseDateTime chooseDateTimeDmmy = ChooseDateTime(doctorDetails: doctorBasicDetailsDummy, dateSlots: [
  AvalableSlotsDates(
      date: DateTime.now(), avaliableSlots: 10, morningSlots: dummyMorningSlots, afterNoonSlots: dummyAfternoonSlots, eveningSlots: dummyEveningSlots),
  AvalableSlotsDates(
      date: DateTime.now().add(const Duration(days: 1)),
      avaliableSlots: 10,
      morningSlots: dummyMorningSlots,
      afterNoonSlots: dummyAfternoonSlots,
      eveningSlots: dummyEveningSlots),
  AvalableSlotsDates(
      date: DateTime.now().add(const Duration(days: 2)),
      avaliableSlots: 10,
      morningSlots: dummyMorningSlots,
      afterNoonSlots: dummyAfternoonSlots,
      eveningSlots: dummyEveningSlots),
  AvalableSlotsDates(
      date: DateTime.now().add(const Duration(days: 3)),
      avaliableSlots: 10,
      morningSlots: dummyMorningSlots,
      afterNoonSlots: dummyAfternoonSlots,
      eveningSlots: dummyEveningSlots),
  AvalableSlotsDates(
      date: DateTime.now().add(const Duration(days: 4)),
      avaliableSlots: 10,
      morningSlots: dummyMorningSlots,
      afterNoonSlots: dummyAfternoonSlots,
      eveningSlots: dummyEveningSlots),
  AvalableSlotsDates(
      date: DateTime.now().add(const Duration(days: 5)),
      avaliableSlots: 10,
      morningSlots: dummyMorningSlots,
      afterNoonSlots: dummyAfternoonSlots,
      eveningSlots: dummyEveningSlots),
]);

List<String> dummyMorningSlots = [
  "09.00 AM",
  "09.15 AM",
  "10.15 AM",
  "10.30 AM",
  "11.00 AM",
];
List<String> dummyAfternoonSlots = [
  "12.15 PM",
  "12.30 PM",
  "01.15 PM",
  "01.30 PM",
  "02.30 PM",
];
List<String> dummyEveningSlots = [
  "04.00 PM",
  "04.15 PM",
  "04.30 PM",
  "04.45 PM",
  "05.00 PM",
];



// dynamic tempdata = {
//   "doctorId": 0,
//   "name": "Shivani Sharma",
//   "imageUrl": "assets/images/doctor-img.png",
//   "spelization": "BDS, MDS",
//   "ratings": 4.8,
//   "experience": 10,
//   "description":
//       "Lorem Ipsum is simply dummy text of the printing. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
//   "patientsTreated": 5000,
//   "ageGroupStart": 8,
//   "ageGroupEnd": 75,
//   "googleReviewsCount": 500,

// };

